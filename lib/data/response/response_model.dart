import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
abstract class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    @Default(true)
    bool success,
    @Default('')
    String message,
    dynamic data,
    dynamic errors,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, Object?> json) =>
      _$ResponseModelFromJson(json);
}
