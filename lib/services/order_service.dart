import 'dart:convert';
import '../model/order.dart';
import 'auth_api.dart';

/**
 *Created by nmupezeni for chezzandi_app
 *User: nmupezeni
 *Date: 12/7/2022
 *Time: 20:40
 */



class OrderService{
  static String baseUrl = "/orders";

  static Future<List<Order>> getorder() async {
    final response = await Network().getData(baseUrl);
    List<Order> list = parseResponse(response.body);
    return list;
  }

  static List<Order> parseResponse(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Order>((json) => Order.fromJson(json)).toList();
  }
}