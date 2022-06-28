import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ocufox_foods/Cards/categories.dart';
import 'package:ocufox_foods/Cards/carousal.dart';

import 'Cards/Fooditem_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List categoryList = [
    'Special Foods',
    'Indian',
    'Mexican',
    'Italian',
    'Chinese',
    'Continental',
    'Malvani',
  ];

  final List imageList = [
    'assets/Food_Images/image1.jpg',
    'assets/Food_Images/image2.jpg',
    'assets/Food_Images/image3.jpg',
    'assets/Food_Images/image4.jpg',
    'assets/Food_Images/image5.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black, size: 35),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_pin, color: Colors.black),
            Text(
              'Thane, Maharashtra',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.black,
                size: 35,
              ))
        ],
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 250,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Carousal(imageLink: imageList[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.cantataOne(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return categories(category: categoryList[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Popular Now',
                      style: GoogleFonts.cantataOne(
                          fontSize: 30, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              GridView.count(
                childAspectRatio: 0.7,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: [
                  FooditemCard(
                      foodName: "Samosa", foodDescription: "foodDescription"),
                  FooditemCard(
                      foodName: "Samosa", foodDescription: "foodDescription"),
                  FooditemCard(
                      foodName: "Samosa", foodDescription: "foodDescription"),
                  FooditemCard(
                      foodName: "Samosa", foodDescription: "foodDescription"),
                  FooditemCard(
                      foodName: "Samosa", foodDescription: "foodDescription")
                ],
              )
            ],
          ),
        ))
      ]),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.red[200],
          child: ListView(
            // padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
            // itemBuilder: (BuildContext context, int index) {
            //   return ListTile(
            //     tileColor: Colors.red,
            //     leading: const Icon(Icons.home),
            //     title: const Text('Home'),
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //   );
            // },
            children: [
              ListTile(
                tileColor: Colors.red,
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.build),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
