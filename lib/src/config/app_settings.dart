import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class AppSettings extends GetxService {
  //
  RxBool hasConnection = false.obs;

  //
  Future<AppSettings> init() async {
    initConnectivity();
    return this;
  }

  final Connectivity _connectivity = Connectivity();

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } catch (e) {
      log("=======>>>> connection lost<<<<=========", name: "connectivity");
      return;
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    hasConnection(result != ConnectivityResult.none);
  }

  //
  @override
  void onReady() {
    super.onReady();
    _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        hasConnection(false);
      } else if (event == ConnectivityResult.wifi ||
          event == ConnectivityResult.mobile) {
        hasConnection(true);
      }
    });
  }
}
