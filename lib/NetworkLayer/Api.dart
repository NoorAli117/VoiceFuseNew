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
      RequestType requestType) async {
    late Response result;
    // if (AppHelper.helper.getToken != "") {
    //   header['Authorization'] = "Bearer ${AppHelper.helper.getToken}";
    // }
    try {
      print(url);
      switch (requestType) {
        case RequestType.GET:
          {
            Options options = Options(headers: header);
            result = await dio.get(url,
                queryParameters: queryParameters, options: options);
            break;
          }
        case RequestType.POST:
          {
            Options options = Options(headers: header);
            result = await dio.post(url, data: body, options: options);
            print(dio.httpClientAdapter);
            print(result);
            break;
          }
        case RequestType.DELETE:
          {
            Options options = Options(headers: header);
            result =
                await dio.delete(url, data: queryParameters, options: options);
            break;
          }
        case RequestType.PUT:
          {
            Options options = Options(headers: header);
            result = await dio.put(url, data: body, options: options);
            break;
          }
        case RequestType.PATCH:
          {
            Options options = Options(headers: header);
            result = await dio.patch(url, data: body, options: options);
            break;
          }
      }
      if (result.statusCode == 200 || result.statusCode == 201) {
        if (result.data is List) {
          return NetworkResponse.successList(result.data);
        } else {
          return NetworkResponse.success(result.data);
        }
      } else {
        return const NetworkResponse.error("Data is null");
      }
    } on DioException catch (error) {
      return NetworkResponse.error(error.message ?? "");
    } catch (error) {
      return NetworkResponse.error(error.toString());
    }
  }
}
