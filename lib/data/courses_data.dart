
import 'package:Orientation/models/courses_model.dart';
import 'package:flutter/material.dart';

final _graphicDesign = CourseModel(
  name: 'Graphic Design',
  url: 'https://www.interaction-design.org/literature/topics/graphic-design',
  time: 3,
  
  snackIcon: Icons.lock_clock,
  description: "Graphic design is a craft where professionals create visual content to communicate messages. By applying visual hierarchy and page layout techniques, designers use typography and pictures to meet users’ specific needs and focus on the logic of displaying elements in interactive designs, to optimize the user experience.",
);

final _interiorDesign = CourseModel(
  name: 'Interior Design',
  url: 'https://www.archdaily.com/935869/what-is-interior-design-and-why-can-it-really-make-you-feel-better',
  time: 3,
  snackIcon: Icons.lock_clock,
  description: "Interior design is the art and science of enhancing the interior of a building to achieve a healthier and more aesthetically pleasing environment for the people using the space. An interior designer is someone who plans, researches, coordinates, and manages such enhancement projects."
);

final _drawingAndPainting = CourseModel(
  name: 'Drawing and Painting',
  url: 'http://www.vam.ac.uk/content/articles/w/what-is-drawing/',
  time: 3,
  snackIcon: Icons.lock_clock,
  description: "Drawing is a form of visual art in which an artist uses instruments to mark paper or other two-dimensional surface. Drawing instruments include graphite pencils, pens, colored pencils, crayons, charcoal, chalk, pastels, erasers, markers and styluses. \n\nDigital drawing is the act of using a computer to draw. Common methods of digital drawing include a stylus or finger on a touchscreen device, stylus- or finger-to-touchpad, or in some cases, a mouse. There are many digital art programs and devices. \n\nPainting is the practice of applying paint, pigment, color or other medium to a solid surface (called the matrix or support).[1] The medium is commonly applied to the base with a brush, but other implements, such as knives, sponges, and airbrushes, can be used."
);

final _productDesign = CourseModel(
  name: 'Product Design',
  url: 'https://medium.com/hubspot-product/explain-it-like-im-5-what-is-a-product-designer-121aad98c047',
  time: 3,
  snackIcon: Icons.lock_clock,
  description: "A Product Designer, at it’s core, is a problem solver. \nA Product Designer is someone who uses the different facets and tools of design to create and execute a solution that solves for a user’s experience deficiencies.\nA Product Designer is well-versed in multiple competencies of design."
);

final _fashionDesign = CourseModel(
  name: 'Fashion Design',
  url: 'https://www.fibre2fashion.com/industry-article/2860/what-is-fashion-design',
  time: 3,
  snackIcon: Icons.lock_clock,
  description: "Fashion Designing is really a form of art that is dedicated to the creation of clothing and other accessories that form part of someone’s lifestyle. Modern fashion designing can be further divided into two broad categories: ready to wear and haute couture."
);

final List<CourseModel> courses = [
  _graphicDesign,
  _interiorDesign,
  _drawingAndPainting,
  _productDesign,
  _fashionDesign
];