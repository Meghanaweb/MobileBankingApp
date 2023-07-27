import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _search = false;
  bool get search => _search;
  set search(bool _value) {
    _search = _value;
  }

  bool _visibility = false;
  bool get visibility => _visibility;
  set visibility(bool _value) {
    _visibility = _value;
  }

  bool _buttondisability = true;
  bool get buttondisability => _buttondisability;
  set buttondisability(bool _value) {
    _buttondisability = _value;
  }

  dynamic _appConstant = jsonDecode(
      '{\"flow1\":\"Retail\",\"flow2\":\"Corporate\",\"transactionStatus1\":\"Approval Pending\"}');
  dynamic get appConstant => _appConstant;
  set appConstant(dynamic _value) {
    _appConstant = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
