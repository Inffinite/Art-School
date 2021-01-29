import 'package:Orientation/data/constants.dart';
import 'package:flutter/material.dart';

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