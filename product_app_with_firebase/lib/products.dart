import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  List<Product> productsList = [];

  Future<void> fetchData ()async{
    try{

      final String url =
          "https://flutter-product-app-b131c-default-rtdb.firebaseio.com/product.json";
      http.Response res = await http.get(url);

      final extractedData =json.decode(res.body)as Map<String,dynamic>;
      extractedData.forEach((prodId, prodData) {
        var isExist =productsList.firstWhere((element) => element.id == prodId,orElse: ()=>null);

        if (isExist ==null){
          productsList.add(Product(
              id: prodId,
              title: prodData['title'],
              description: prodData['description'],
              price: prodData['price'],
              imageUrl: prodData['imageUrl'])
          );
        }
      });
      notifyListeners();
    }catch(error){
      throw error;
    }

}


  Future<void> add(
      {String id,
      String title,
      String description,
      double price,
      String imageUrl}) async{
    try{

      final String url =
          "https://flutter-product-app-b131c-default-rtdb.firebaseio.com/product.json";
      http.Response res = await http.post(url,
          body: json.encode({
            'id': id,
            'title': title,
            'description': description,
            'price':price,
            'imageUrl':imageUrl
          }));
      print(json.decode(res.body));

      productsList.add(Product(
        id: json.decode(res.body)['name'],
        title: title,
        description: description,
        price: price,
        imageUrl: imageUrl,
      ));
      notifyListeners();
    }catch(error){
      throw error;
    }

    //.then((res)
        /*.catchError((error){
      throw error;
    });*/


  }

  void delete(String id) {
    productsList.removeWhere((element) => element.id == id);
    notifyListeners();
    print("Item Deleted");
  }
}
