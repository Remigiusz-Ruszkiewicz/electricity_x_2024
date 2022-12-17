import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  dynamic _selectedIndex = {};

  final CarouselController _carouselController = CarouselController();

  final List<dynamic> _products = [
    {
      'image': 'assets/images/foto_1.png',
      'title': 'Colombo Energy',
      'number': '798 552 016',
      'website': 'www.colomboenergy.com'
    },
    {
      'image': 'assets/images/foto_2.png',
      'title': 'Power Energy',
      'number': '789 655 241',
      'website': 'www.powerenergy.com'
    },
    {
      'image': 'assets/images/foto_3.png',
      'title': 'Foto Energy',
      'number': '602 993 103',
      'website': 'www.fotoenergy.com'
    },
    {
      'image': 'assets/images/foto_4.png',
      'title': 'SONASL Energy',
      'number': '536 551 888',
      'website': 'www.sonaslenergy.com'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
              autoPlay: true,
              height: 450.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.70,
              enlargeCenterPage: true,
              pageSnapping: true,
              onPageChanged: (index, reason) {}),
          items: _products.map((movie) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
                          contentPadding: const EdgeInsets.only(top: 10.0),
                          content: SizedBox(
                            width: 300.0,
                            height: 200,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      movie['title'],
                                      style: const TextStyle(fontSize: 24.0),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Divider(
                                  color: Colors.red,
                                  height: 4.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.phone),
                                          Text(
                                            ' : ' + movie['number'],
                                            style: const TextStyle(fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                                      child: Row(
                                        children: [
                                          const Icon(Icons.web_sharp),
                                          Text(
                                            ' : ' + movie['website'],
                                            style: const TextStyle(fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                    setState(() {
                      if (_selectedIndex == movie) {
                        _selectedIndex = {};
                      } else {
                        _selectedIndex = movie;
                      }
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            margin: const EdgeInsets.only(top: 10),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(movie['image'], fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Column(
                              children: [
                                const Divider(
                                  color: Colors.red,
                                  thickness: 2,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      movie['title'],
                                      style: const TextStyle(fontSize: 25, color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.grey.shade600,
                                    ),
                                    Text(
                                      ' : ' + movie['number'],
                                      style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList()),
    );
  }
}
