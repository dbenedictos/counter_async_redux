import 'package:async_redux/async_redux.dart';
import 'package:counter_async_redux/api/models/album_model.dart';
import 'package:counter_async_redux/feature/home_page/home_page_connector.dart';
import 'package:counter_async_redux/state/actions/home_page_actions.dart';
import 'package:counter_async_redux/state/app_state.dart';
import 'package:flutter/material.dart';

class HomePageVmFactory extends VmFactory<AppState, HomePageConnector> {
  @override
  Vm fromStore() {
    return HomePageVm(
      onIncrement: _onIncrement,
      count: state.count,
      album: state.album,
    );
  }

  void _onIncrement() => dispatch(IncrementCounterAction());
}

class HomePageVm extends Vm {
  HomePageVm({
    required this.onIncrement,
    required this.count,
    this.album,
  }) : super(equals: [count, album]);

  final VoidCallback onIncrement;
  final int count;
  final AlbumModel? album;
}
