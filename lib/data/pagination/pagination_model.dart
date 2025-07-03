import 'package:freezed_annotation/freezed_annotation.dart';


part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    required int currentPage,
    required int lastPage,
    required dynamic data,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, Object?> json)
  => _$PaginationModelFromJson(json);
}
