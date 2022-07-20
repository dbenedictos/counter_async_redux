import 'dart:async';

import 'package:async_redux/async_redux.dart';
import 'package:counter_async_redux/api/handlers/album_handler.dart';
import 'package:counter_async_redux/state/app_state.dart';

class IncrementCounterAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    final currentCount = state.count;
    return state.copyWith(count: currentCount + 1);
  }
}

class GetAlbumAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    final album = await AlbumHandler.getAlbum();
    return state.copyWith(album: album);
  }
}
