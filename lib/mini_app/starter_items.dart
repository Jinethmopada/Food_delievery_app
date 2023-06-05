import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class StarterItems{
  final String name;
  final String image;

  StarterItems({
    required this.name,
    required this.image,
  });
}

class StarterItemsScreen extends StatefulWidget {
  const StarterItemsScreen({Key? key}) : super(key: key);

  @override
  State<StarterItemsScreen> createState() => _StarterItemsScreenState();
}

class _StarterItemsScreenState extends State<StarterItemsScreen> {
  List<StarterItems> items = [];
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
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Starter'));
      final responseData = json.decode(response.body);
      final meals = responseData['meals'];
      if (meals != null && meals is List) {
        setState(() {
          items = meals.map((meal) {
            return StarterItems(
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
        title: Text('Starter Items'),
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
