import 'package:dio/dio.dart';
import 'package:flutter_book/core/networking/network/layers/network_requestor.dart';

class CoinApiService {
  var baseUrl = "https://api.coingecko.com";

  var baseHeader ={"token":"xxxxx"};


  RequestOptions getDetailOptions({required String coinName}){
    return RequestOptions(path: "/coins",baseUrl: baseUrl,headers: baseHeader);
  }

   RequestOptions getCategoryOptions(){
    return RequestOptions(path: "/coins/categories",baseUrl: baseUrl,headers: baseHeader);
  }
}
