import 'dart:convert';
import 'dart:developer';

import 'package:hdfc_response/api_constant.dart';
import 'package:hdfc_response/model/hdfc_model.dart';
import 'package:http/http.dart' as http;


class ApiService {
   Future<HdfcModel>? getHdfcbankInfo() async {
    //try{

      var url = Uri.parse(Apiconstant.baseUrl + Apiconstant.company_endpoint);
      var response = await http.get(url);
      if(response.statusCode == 200){
        print("response:" + response.body);

        return HdfcModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Unable to fetch data from the REST API');
      }
   // }catch(e){
     // log("err:"+e.toString());
  //  }
  }
}