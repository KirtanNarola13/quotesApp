import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1516410529446-2c777cb7366d?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2FkJTIwYmFja2dyb3VuZHxlbnwwfHwwfHx8MA%3D%3D',
  'https://media.istockphoto.com/id/1132845036/photo/chalkboard-light-bulb.webp?b=1&s=170667a&w=0&k=20&c=Gk1aOsKjp8wmw8Ce4I6PaMtV4juWVz4gsDYTQVvqEOE=',
  'https://img.freepik.com/premium-photo/white-rising-bar-chart-blue-background-with-copy-space-business-economic-money-investment-concept-goal-success-theme-3d-rendering_10307-1485.jpg',
  'https://img.freepik.com/premium-vector/abstract-diwali-festival-sparkles-background-with-crackers_590983-202.jpg',
  'https://t4.ftcdn.net/jpg/02/86/76/77/360_F_286767786_boXM75PDLYIsYWzabZ3fKcM3esv50TNS.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyx9Ofr1eEHa4fE5HBvZgHXHc-YKyCY2dCrSyXZ_s8ZjkCop7Xzd4I5OuT0JWaAJHG8WM&usqp=CAU',
  'https://img.freepik.com/free-photo/meal-planning-notepad-food-assortment_23-2149099872.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUofsj0sxdSO3KMJURqCCwLJHOlTDrQNsrxQ&usqp=CAU',
  'https://images.unsplash.com/photo-1506869640319-fe1a24fd76dc?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJpZW5kfGVufDB8fDB8fHww',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quote App",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: h / 30,
          ),
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
        ],
      ),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          child: Stack(
            children: <Widget>[
              BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 6, sigmaY: 7),
                  child: Image.network(item, fit: BoxFit.cover, width: 1000.0)),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(200, 0, 0, 0),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("Category"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    )
    .toList();
