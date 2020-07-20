import 'package:firstapp/components/cuisine_items_card.dart';
import 'package:firstapp/components/home_title.dart';
import 'package:firstapp/components/nearby_items_card.dart';
import 'package:firstapp/components/popular_items_card.dart';
import 'package:firstapp/models/cuisineItems.dart';
import 'package:firstapp/models/nearbyItems.dart';
import 'package:firstapp/models/popularItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  List<CuisineItems> cuisineItems = [
    CuisineItems(text: "Pizza & Pasta", secondaryText: "28 reviews", image: "assets/images/pizza.jpeg"),
    CuisineItems(text: "Sushi", secondaryText: "26 reviews", image: "assets/images/sushi.jpeg"),
    CuisineItems(text: "Mexican", secondaryText: "31 reviews", image: "assets/images/mexican.jpeg"),
    CuisineItems(text: "Pizza & Pasta", secondaryText: "28 reviews", image: "assets/images/pizza.jpeg"),
    CuisineItems(text: "Sushi", secondaryText: "26 reviews", image: "assets/images/sushi.jpeg"),
    CuisineItems(text: "Mexican", secondaryText: "31 reviews", image: "assets/images/mexican.jpeg"),
  ];
  List<PopularItems> popularItems = [
    PopularItems(text: "Thai Me Up Restaurant &\nBrewery", image: "assets/images/brewery.jpeg"),
    PopularItems(text: "Tequila Mackingbir\nGreenpoint",  image: "assets/images/greenpoint.jpeg"),
    PopularItems(text: "Thai Me Up Restaurant &\nBrewery", image: "assets/images/brewery.jpeg"),
    PopularItems(text: "Tequila Mackingbir\nGreenpoint",  image: "assets/images/greenpoint.jpeg"),
    PopularItems(text: "Thai Me Up Restaurant &\nBrewery", image: "assets/images/brewery.jpeg"),
    PopularItems(text: "Tequila Mackingbir\nGreenpoint",  image: "assets/images/greenpoint.jpeg"),
  ];
  List<NearByItems> nearbyItems = [
    NearByItems(text: "Sotto || Ponte Pizza\nPasta Tradizionali", image: "assets/images/ponte_pizza.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
    NearByItems(text: "Sotto || Ponte Pizza\nPasta Tradizionali", image: "assets/images/ponte_pizza.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
    NearByItems(text: "Sotto || Ponte Pizza\nPasta Tradizionali", image: "assets/images/ponte_pizza.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
    NearByItems(text: "Delicious Pizza & Pasta\nTraditionaly",  image: "assets/images/delicious.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20,),
            HomeTitle(text: "Promotions"),
            SizedBox(height: 16,),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: cuisineItems.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return CuisineItemsCard(cuisineItems: cuisineItems[index]);
                },
              ),
            ),
            SizedBox(height: 20,),
            HomeTitle(text: "Recommend For You"),
            SizedBox(height: 16,),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: popularItems.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index){
                  return PopularItemsCard(popularItems: popularItems[index]);
                },
              ),
            ),
            SizedBox(height: 20,),
            HomeTitle(text: "Nearby"),
            SizedBox(height: 16,),
            ListView.builder(
              itemCount: nearbyItems.length,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 16),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return NearByItemsCard(nearByItems: nearbyItems[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}