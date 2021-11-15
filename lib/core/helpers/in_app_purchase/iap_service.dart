import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';


import 'package:in_app_purchase/in_app_purchase.dart';

import 'package:in_app_purchase_android/in_app_purchase_android.dart';


class IAPHelper {
  IAPHelper._();

  static final shared = IAPHelper._();

  final _productIds = {"premiumProductID"};

  final _inAppPurchaseInstance = InAppPurchase.instance;

  List<ProductDetails> _products = [];

  late StreamSubscription<List<PurchaseDetails>> _subscription;

  late VoidCallback errorAlertFunction;
  late VoidCallback purchaseFunction;
  late VoidCallback restoreFunction;

  Future<void> restorePurchase() async {
    try {
      await _inAppPurchaseInstance.restorePurchases();
    } catch (e) {
      print("Error in restorepurchase");
    }
  }

  Future<void> purchasePremium() async {
    if (_products.isNotEmpty) {
      var product = _products[0];
      late PurchaseParam purchaseParam;
      if (Platform.isAndroid) {
        purchaseParam = GooglePlayPurchaseParam(
          productDetails: product,
        );
      } else {
        purchaseParam = PurchaseParam(
          productDetails: product,
        );
      }

      await _inAppPurchaseInstance.buyNonConsumable(
          purchaseParam: purchaseParam);
    }
  }

  Future<void> initIAPSubscription(
      {required VoidCallback errorAlertFunction,
      required VoidCallback purchaseFunction,
      required VoidCallback restoreFunction}) async {
    this.errorAlertFunction = errorAlertFunction;
    this.purchaseFunction = purchaseFunction;
    this.restoreFunction = restoreFunction;
    await _initSubscription();
    await _initStoreInfo();
  }

  Future<void> disposeIAP() async {
    _subscription.cancel();
  }

  Future<bool> getIsPremium() async {
    //get from database
    return false;
  }

  Future<void> _initStoreInfo() async {
    final bool isAvailable = await _inAppPurchaseInstance.isAvailable();
    ProductDetailsResponse productDetailResponse =
        await _inAppPurchaseInstance.queryProductDetails(_productIds);
    _products = productDetailResponse.productDetails;
    if (productDetailResponse.error != null ||
        productDetailResponse.productDetails.isEmpty ||
        !isAvailable) {
      return;
    }
  }

  Future<void> _initSubscription() async {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchaseInstance.purchaseStream;
    _subscription = purchaseUpdated.listen((purchaseDetailList) {
      if (purchaseDetailList.isNotEmpty) {
        _handlePurchase(purchaseDetailList[0]);
      }
    }, onDone: () {
      _subscription.cancel();
    }, onError: (error) {
      errorAlertFunction();
    });
  }

  Future<void> _handlePurchase(PurchaseDetails purchaseItem) async {
    if (purchaseItem.status == PurchaseStatus.error) {
      errorAlertFunction();
      await _inAppPurchaseInstance.completePurchase(purchaseItem);
    } else if (purchaseItem.status == PurchaseStatus.purchased ||
        purchaseItem.status == PurchaseStatus.restored) {
      await _deliverProduct(purchaseItem);
      if (purchaseItem.status == PurchaseStatus.purchased) {
        purchaseFunction();
      } else {
        restoreFunction();
      }
    }

    if (purchaseItem.pendingCompletePurchase) {
      await _inAppPurchaseInstance.completePurchase(purchaseItem);
    }
  }

  Future<void> _deliverProduct(PurchaseDetails purchaseDetails) async {
    // User bought the product. Set user to premium in database.
  }
}

void initializeIAPHelper() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }
}
