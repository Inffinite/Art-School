import 'package:Orientation/data/constants.dart';
import 'package:Orientation/widgets/CardScrollWidget.dart';
import 'package:Orientation/widgets/CareerTab.dart';
import 'package:Orientation/widgets/Description.dart';
import 'package:Orientation/widgets/Snack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../customIcons.dart';
import '../data.dart';
import '../data/courses_data.dart';

class Orient extends StatefulWidget {
  @override
  _OrientState createState() => _OrientState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _OrientState extends State<Orient> {
  var currentPage = images.length - 1.0;
  var index = 0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;

        switch (currentPage.toInt()) {
          case 4:
            {
              setState(() {
                index = 0;
              });
              break;
            }

          case 3:
            {
              setState(() {
                index = 1;
              });
              break;
            }

          case 2:
            {
              setState(() {
                index = 2;
              });
              break;
            }

          case 1:
            {
              setState(() {
                index = 3;
              });
              break;
            }

          case 0:
            {
              setState(() {
                index = 4;
              });
              break;
            }
        }
      });
    });

    _launchUrl(url) async {
      await launch(url);
    }

    _careers(index) {
      switch (index) {
        case 4:
          return Column(
            children: [
              CareerTab(name: 'Clothing Designer'),
              CareerTab(name: 'Footwear Designer'),
              CareerTab(name: 'Accessory Designer'),
              CareerTab(name: 'Costume Designer'),
              CareerTab(name: 'Apparel Designer'),
            ],
          );
          break;

        case 3:
          return Column(
            children: [
              CareerTab(name: 'Product Designer'),
              CareerTab(name: 'Textile Technologist'),
              CareerTab(name: 'Furniture Designer'),
              CareerTab(name: 'Interior and Spatial Designer'),
              CareerTab(name: 'Apparel Designer'),
            ],
          );
          break;

        case 2:
          return Column(
            children: [
              CareerTab(name: 'Painter'),
              CareerTab(name: 'Art Gallery Curator'),
              CareerTab(name: 'Art Technician'),
              CareerTab(name: 'Art Valuer'),
              CareerTab(name: 'Conservator'),
            ],
          );
          break;

        case 1:
          return Column(
            children: [
              CareerTab(name: 'Interior Designer'),
              CareerTab(name: 'Furniture Designer'),
              CareerTab(name: 'Exhibition Designer'),
              CareerTab(name: 'Lighting Designer'),
              CareerTab(name: 'Kitchen Designer'),
            ],
          );
          break;

        case 0:
          return Column(
            children: [
              CareerTab(name: 'Logo Designer'),
              CareerTab(name: 'Package Designer'),
              CareerTab(name: 'Multimedia Designer'),
              CareerTab(name: 'Publication Designer'),
              CareerTab(name: 'User Interface Designer'),
            ],
          );
          break;

        default:
      }
    }

    _careersModal(context) {
      showModalBottomSheet(
        backgroundColor: kWhiteShade,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (context) => Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 30.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    children: [
                      // Center(
                      //   child: Text(
                      //     'Potential Careers',
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 18.0,
                      //       color: kWhiteShade,
                      //       fontFamily: 'SF-Pro-Text-Bold',
                      //     ),
                      //   ),
                      // ),
                      _careers(index)
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kGreenShade,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            // actions: [
            //   Icon(Icons.menu, size: 20.0)
            // ],
            title: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Text(
                'Art School',
                style: TextStyle(
                    color: Color(0xFFFCF6F5), fontSize: 22.0,fontFamily: "SF-Pro-Text-Bold"),
              ),
            ),
            leading: Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child:Icon(
                  CupertinoIcons.compass_fill,
                  size: 30.0,
                  color: Color(0xFFFCF6F5),
                ),
            ),
            backgroundColor: Color(0xFF2BAE66),
            // expandedHeight: 100.0,
            floating: true,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 10.0),
              //   height: 380.0,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //       color: Color(0xFFFCF6F5),
              //       borderRadius: BorderRadius.circular(10.0)),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Stack(
                  children: <Widget>[
                    CardScrollWidget(currentPage),
                    Positioned.fill(
                      child: PageView.builder(
                        itemCount: images.length,
                        controller: controller,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return Container();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Snack("${courses[index].time.toString()} years",
                            Icons.lock_clock),
                        SizedBox(width: 10.0),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    // Text(
                    //   courses[index].description.toString(),
                    //   style: TextStyle(
                    //     letterSpacing: 0.5,
                    //     height: 2.0,
                    //     color: Color(0xFFFCF6F5),
                    //     fontSize: 20.0,
                    //   ),
                    // ),
                    Description(index),
                    SizedBox(height: 30.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: kWhiteShade,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          _launchUrl(courses[index].url);
                        },
                        child: Center(
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              fontFamily: 'SF-Pro-Text-Bold',
                              color: kGreenShade,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.blueAccent,
                      ),
                      child: FlatButton(
                        onPressed: () {
                          _careersModal(context);
                        },
                        child: Center(
                          child: Text(
                            'Careers',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              fontFamily: 'SF-Pro-Text-Bold',
                              color: kWhiteShade,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
