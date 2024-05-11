import 'dart:convert';

Success successFromJson(String str) => Success.fromJson(json.decode(str));

String successToJson(Success data) => json.encode(data.toJson());

class Success {
  bool status;
  String message;

  Success({
    required this.status,
    required this.message,
  });

  factory Success.fromJson(Map<String, dynamic> json) => Success(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
