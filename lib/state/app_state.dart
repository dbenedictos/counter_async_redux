import 'package:counter_async_redux/api/models/album_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    @Default(0) @JsonKey(name: 'count') int count,
    @JsonKey(name: 'album') AlbumModel? album,
  }) = _AppState;

  factory AppState.init() => AppState(count: 0);

  factory AppState.fromJson(Map<String, dynamic> json) => _$AppStateFromJson(json);
}
