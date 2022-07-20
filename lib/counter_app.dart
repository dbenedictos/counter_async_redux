import 'package:async_redux/async_redux.dart';
import 'package:counter_async_redux/feature/home_page/home_page_connector.dart';
import 'package:counter_async_redux/state/app_state.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({required this.store});

  final Store<AppState> store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePageConnector(),
      ),
    );
  }
}
