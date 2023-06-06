import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class FoodItem {
  final String id;
  final String name;
  final String image;

  FoodItem({required this.id, required this.name, required this.image});
}

class FoodItemsScreen extends StatefulWidget {
  @override
  _FoodItemsScreenState createState() => _FoodItemsScreenState();
}

class _FoodItemsScreenState extends State<FoodItemsScreen> {
  List<FoodItem> foodItems = [];
  bool isLoading =false;

  @override
  void initState() {
    super.initState();
    fetchFoodItems();
  }

  Future<void> fetchFoodItems() async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'));
      final responseData = json.decode(response.body);
      final meals = responseData['meals'];
      if (meals != null && meals is List) {
        setState(() {
          foodItems = meals.map((meal) {
            return FoodItem(
              id: meal['idMeal'],
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
        title: Text('Sea Food Items'),
      ),
      body:isLoading ?
      Center(
        child:CircularProgressIndicator(),
      ):
        ListView.builder(
          itemCount: foodItems.length,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Container(
                  width: 230,
                  margin: EdgeInsets.all(18.0),
                  child: Image.network(foodItems[index].image),
                ),
                Text(foodItems[index].name,style: TextStyle(fontSize: 20,color: Colors.red),),
              ],
            );
          },
        ),
    );
  }
}

