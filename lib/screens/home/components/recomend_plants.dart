import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendPlantCard(
            image: "assets/images/antonC.png",
            title: "Moda Sahnesi",
            country: "Tiyatro",
            price: "12 Ocak 20.00",
            description: "Anton Çehov\nVişne Bahçesi",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/kaleo.png",
            title: "IF Performance",
            country: "Konser",
            price: "12 Ocak 21.00 ",
            description: "Kaleo\nRock Grup",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/batman.png",
            title: "Cinemaximum",
            country: "Sinema",
            price: "12 Ocak 18.00",
            description: "DC Comics\nThe Batman",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomendPlantCard(
            image: "assets/images/hali.png",
            title: "Halı Saha",
            country: "Futbol Maçı",
            price: "12 Ocak 23.00 ",
            description: "Serdivan\nFutbol",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.description,
    this.press,
  }) : super(key: key);

  final String image, title, country,description;
  final String price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2.5,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.5,
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
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
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
                          text: "$price\n".toUpperCase(),
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
