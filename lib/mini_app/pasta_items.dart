import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PastaItems{
  final String name;
  final String image;

  PastaItems({
    required this.name,
    required this.image,
  });
}

class PastaItemsScreen extends StatefulWidget {
  const PastaItemsScreen({Key? key}) : super(key: key);

  @override
  State<PastaItemsScreen> createState() => _PastaItemsScreenState();
}

class _PastaItemsScreenState extends State<PastaItemsScreen> {
  List<PastaItems> items = [];
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
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Pasta'));
      final responseData = json.decode(response.body);
      final meals = responseData['meals'];
      if (meals != null && meals is List) {
        setState(() {
          items = meals.map((meal) {
            return PastaItems(
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
        title: Text('Pasta Items'),
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
