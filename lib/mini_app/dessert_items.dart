import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DessertItems{
  final String name;
  final String image;

  DessertItems({
    required this.name,
    required this.image,
  });
}

class DessertItemsScreen extends StatefulWidget {
  const DessertItemsScreen({Key? key}) : super(key: key);

  @override
  State<DessertItemsScreen> createState() => _DessertItemsScreenState();
}

class _DessertItemsScreenState extends State<DessertItemsScreen> {
  List<DessertItems> items = [];
  bool isLoading = false;

  @override
  void initState(){
    super.initState();
    fetchItems();
  }
  Future<void> fetchItems() async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Dessert'));
      final responseData = json.decode(response.body);
      final meals = responseData['meals'];
      if (meals != null && meals is List) {
        setState(() {
          items = meals.map((meal) {
            return DessertItems(
              name: meal['strMeal'],
              image: meal['strMealThumb'],
            );
          }).toList();
          isLoading = false;
        });
      }
    } catch (error) {
      print('Error fetching food items: $error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dessert Items'),
      ),
      body:isLoading ?
      Center(
        child:CircularProgressIndicator(),
      ):
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              Container(
                width: 230,
                margin: EdgeInsets.all(18.0),
                child: Image.network(items[index].image),
              ),
              Text(items[index].name,style: TextStyle(fontSize: 20,color: Colors.red),),
            ],
          );
        },
      ),
    );
  }
}
