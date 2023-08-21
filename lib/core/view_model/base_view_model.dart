import 'dart:async';

import 'package:flutter/material.dart';
import 'package:network_provider_test/core/view/view_state.dart';

class BaseViewModel extends ChangeNotifier {
  ViewState _state = const ViewState.loading();

  ViewState get state => _state;

  bool isDisposed = false;

  final _errorController = StreamController<dynamic>();

  Stream get errorStream => _errorController.stream;

  void emitError(dynamic error) {
    if (_errorController.isClosed) {
      return;
    }
    _errorController.add(error);
  }

  bool get isLoading {
    return _state == const ViewState.loading();
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  @override
  void dispose() {
    isDisposed = true;
    _errorController.close();
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (isDisposed) return;
    super.notifyListeners();
  }
}
