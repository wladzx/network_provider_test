import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const ViewState._();

  const factory ViewState.loading() = Loading<T>;

  const factory ViewState.loaded() = Loaded<T>;

  const factory ViewState.error({required T error}) = Error<T>;
}
