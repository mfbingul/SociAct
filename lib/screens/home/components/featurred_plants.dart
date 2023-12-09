import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/tennis.png",
            title: "Tennis Club",
            country: "Tenis",
            date: "23 Şubat 13.00",
            description: "Kadıköy\nSaha Sporları",
            press: () {

            },
          ),
          FeaturePlantCard(
            image: "assets/images/paintball.png",
            title: "Kartepe Paintball",
            country: "Paintball",
            date: "29 Ocak 15.00 ",
            description: "Serdivan\nÇok Oyunculu ",
            press: () {

            },
          ),
          FeaturePlantCard(
            image: "assets/images/kanp.png",
            title: "Kerem Ali Yaylası",
            country: "kamp",
            date: "25 Ocak 08.00",
            description: "Hendek\nDoğa",
            press: () {
            },
          ),
          FeaturePlantCard(
            image: "assets/images/chess.png",
            title: "Satranç Turnuvası",
            country: "Satranç",
            date: "22 Mart 09.00 ",
            description: "Adapazarı\nMasa Etkinlikleri",
            press: () {
            },
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.date,
    this.description,
    this.press,
  }) : super(key: key);

  final String image, title, country,description;
  final String date;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2.5,
        bottom: kDefaultPadding,
      ),
      width: size.width * 0.8,
      child: Column(
        children: <Widget>[

          Image.asset(image),
          GestureDetector(

            onTap: press,
            child: Container(

              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 30),
                    blurRadius: 40,
                    color: kPrimaryColor.withOpacity(0.24),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country\n".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                        TextSpan(
                          text: "$date\n".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(1),
                          ),
                        ),
                        TextSpan(
                            text: "$description\n",
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                  Spacer(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
