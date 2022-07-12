/**
 *Created by nmupezeni for chezzandi_app
 *User: nmupezeni
 *Date: 12/7/2022
 *Time: 20:38
 */


class Order{
  int id_order, client_id;
  String city, order_status;

  Order({required this.id_order, required this.client_id, required this.city, required this.order_status});

  factory Order.fromJson(Map<String, dynamic> json){
    return Order(
      id_order: json['id_order'],
      client_id: json['client_id'],
      city: json['city'],
      order_status: json['order_status'],
    );
  }

}