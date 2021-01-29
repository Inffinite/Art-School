import 'dart:math';

import 'package:Orientation/data/constants.dart';
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
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

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
        backgroundColor: Colors.blueAccent,
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

    return GestureDetector(
      onTap: () {
        setState(() {
          xOffset = 0;
          yOffset = 0;
          scaleFactor = 1;
          isDrawerOpen = false;
        });
      },
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(isDrawerOpen ? -0.5 : 0),
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            color: kGreenShade,
            borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
        child: CustomScrollView(
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
                  'Orientation',
                  style: TextStyle(
                      color: Color(0xFFFCF6F5), fontFamily: "SF-Pro-Text-Bold"),
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                ),
                child: IconButton(
                  splashRadius: 25.0,
                  icon: Icon(
                    CustomIcons.menu,
                    size: 30.0,
                    color: Color(0xFFFCF6F5),
                  ),
                  onPressed: () {
                    setState(() {
                      xOffset = 230;
                      yOffset = 150;
                      scaleFactor = 0.6;
                      isDrawerOpen = true;
                    });
                  },
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
      ),
    );
  }
}

class CareerTab extends StatelessWidget {
  final String name;

  CareerTab({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      padding: EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: kWhiteShade,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: kWhiteShade,
              borderRadius: BorderRadius.circular(50.0),
              border: Border.all(
                color: Colors.blueAccent,
                width: 2.0,
              ),
            ),
            child: Center(
              child: Icon(Icons.work_outline, color: Colors.blueAccent),
            ),
          ),
          SizedBox(width: 16.0),
          Flexible(
            child: Text(
              name,
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Description extends StatefulWidget {
  final int index;

  Description(this.index);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    switch (widget.index) {
      case 4:
        return RichText(
          text: TextSpan(
              text: 'Fashion Designing ',
              style: TextStyle(
                  color: kWhiteShade,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              children: [
                TextSpan(
                  text:
                      'is really a form of art that is dedicated to the creation of clothing and other accessories that form part of someone’s lifestyle. Modern fashion designing can be further divided into two broad categories: ready to wear and haute couture.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontFamily: 'SF-Pro-Text-Regular',
                    fontSize: 20.0,
                  ),
                )
              ]),
        );
        break;

      case 3:
        return RichText(
          text: TextSpan(
              text: 'A Product Designer, ',
              style: TextStyle(
                  color: kWhiteShade,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              children: [
                TextSpan(
                  text:
                      'at it’s core, is a problem solver. \nA Product Designer is someone who uses the different facets and tools of design to create and execute a solution that solves for a user’s experience deficiencies.\nA Product Designer is well-versed in multiple competencies of design.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontSize: 20.0,
                  ),
                )
              ]),
        );
        break;

      case 2:
        return RichText(
          text: TextSpan(
              text: 'Drawing ',
              style: TextStyle(
                  color: kWhiteShade,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              children: [
                TextSpan(
                  text:
                      'is a form of visual art in which an artist uses instruments to mark paper or other two-dimensional surface. Drawing instruments include graphite pencils, pens, colored pencils, crayons, charcoal, chalk, pastels, erasers, markers and styluses.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontSize: 20.0,
                  ),
                ),
                TextSpan(
                  text: '\n\nPainting ',
                  style: TextStyle(
                      color: kWhiteShade,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                TextSpan(
                  text:
                      'is the practice of applying paint, pigment, color or other medium to a solid surface (called the matrix or support).[1] The medium is commonly applied to the base with a brush, but other implements, such as knives, sponges, and airbrushes, can be used.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ]),
        );
        break;

      case 1:
        return RichText(
          text: TextSpan(
              text: 'Interior Design ',
              style: TextStyle(
                  color: kWhiteShade,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              children: [
                TextSpan(
                  text:
                      'is the art and science of enhancing the interior of a building to achieve a healthier and more aesthetically pleasing environment for the people using the space. An interior designer is someone who plans, researches, coordinates, and manages such enhancement projects.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontSize: 20.0,
                  ),
                )
              ]),
        );
        break;

      case 0:
        return RichText(
          text: TextSpan(
              text: 'Graphic design ',
              style: TextStyle(
                  color: kWhiteShade,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
              children: [
                TextSpan(
                  text:
                      'is a craft where professionals create visual content to communicate messages. By applying visual hierarchy and page layout techniques, designers use typography and pictures to meet users’ specific needs and focus on the logic of displaying elements in interactive designs, to optimize the user experience.',
                  style: TextStyle(
                    color: kWhiteShade,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    height: 2.0,
                    fontSize: 20.0,
                  ),
                )
              ]),
        );
        break;

      default:
        return Text('howdy');
        break;
    }
  }
}

class Snack extends StatelessWidget {
  final String value;
  final IconData icon;

  Snack(this.value, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        left: 12.0,
        right: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kWhiteShade,
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF2BAE66)),
            SizedBox(width: 5.0),
            Text(
              value,
              style: TextStyle(
                  color: kGreenShade,
                  decoration: TextDecoration.none,
                  fontSize: 16.0,
                  fontFamily: "SF-Pro-Text-Bold"),
            ),
          ],
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 10.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.none,
                                      fontSize: 25.0,
                                      fontFamily: "SF-Pro-Text-Bold")),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 16.0, bottom: 12.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(50.0)),
                                child: Icon(Icons.desktop_mac,
                                    color: kWhiteShade),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
