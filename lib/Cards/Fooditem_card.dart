import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ocufox_foods/Cards/StarRating.dart';

class FooditemCard extends StatefulWidget {
  const FooditemCard(
      {Key? key, required this.foodName, required this.foodDescription})
      : super(key: key);

  @override
  _FooditemCardState createState() => _FooditemCardState();
  final String foodName;
  final String foodDescription;
}

class _FooditemCardState extends State<FooditemCard> {
  double rating = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: const Offset(0, 5),
              blurRadius: 5,
              // spreadRadius: 2.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.asset(
                'assets/Food_Images/image1.jpg',
                // fit: BoxFit.none,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // textAlign: TextAlign.left,
                      widget.foodName,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    Text(
                      // textAlign: TextAlign.left,
                      widget.foodDescription,
                    ),
                    // Center(
                    //   child: Text(
                    //     widget.foodName,
                    //     textAlign: TextAlign.left,
                    //   ),
                    // ),
                    // Center(
                    //   child: Text(
                    //     widget.foodDescription,
                    //     textAlign: TextAlign.left,
                    //   ),
                    // ),
                    // Text('Tikka Masala Pasta')
                    Row(children: [
                      StarRating(
                        rating: rating,
                        onRatingChanged: (rating) =>
                            setState(() => this.rating = rating),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        this.rating.toString(),
                        textAlign: TextAlign.right,
                      )
                    ])

                    // Icon(Icons.star_border,
                    //     color: Theme.of(context).backgroundColor),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
