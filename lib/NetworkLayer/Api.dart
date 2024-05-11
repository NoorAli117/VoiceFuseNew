import 'package:dio/dio.dart';
import '../utils/helper/app_helper.dart';
import '../utils/helper/constant.dart';
import 'AuthInterceptor.dart';
import 'Header.dart';
import 'Logging.dart';
import 'network_response.dart';

enum RequestType { GET, POST, PUT, PATCH, DELETE }

class Api {
  Dio dio = createDio();

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: BASEURL,
      receiveTimeout: const Duration(seconds: 15), // 20 seconds
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
    ));
    dio.interceptors.addAll({
      Logging(dio),
    });

    return dio;
  }

  Future<NetworkResponse?> apiCall(
    String url,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
    RequestType requestType,
  ) async {
    try {
      if (AppHelper.helper.getToken.isNotEmpty) {
        header['Authorization'] = "Bearer ${AppHelper.helper.getToken}";
      }

      print(url);

      Response result;

      switch (requestType) {
        case RequestType.GET:
          result = await dio.get(
            url,
            queryParameters: queryParameters,
            options: Options(headers: header),
          );
          break;
        case RequestType.POST:
          result = await dio.post(
            url,
            data: body,
            options: Options(headers: header),
          );
          break;
        case RequestType.DELETE:
          result = await dio.delete(
            url,
            data: queryParameters,
            options: Options(headers: header),
          );
          break;
        case RequestType.PUT:
          result = await dio.put(
            url,
            data: body,
            options: Options(headers: header),
          );
          break;
        case RequestType.PATCH:
          result = await dio.patch(
            url,
            data: body,
            options: Options(headers: header),
          );
          break;
      }

      if (result.statusCode == 200 || result.statusCode == 201) {
        if (result.data is List) {
          return NetworkResponse.successList(result.data);
        } else {
          return NetworkResponse.success(result.data);
        }
      } else {
        return NetworkResponse.error("Data is null");
      }
    } on DioError catch (error) {
      // Handle DioError
      return NetworkResponse.error(error.message ?? "");
    } catch (error) {
      // Handle other errors
      return NetworkResponse.error(error.toString());
    }
  }
}
