import 'package:colorful_weather/src/CustomPainter/blue_custom_painter.dart';
import 'package:colorful_weather/src/CustomPainter/snow_content_custom_painter.dart';
import 'package:colorful_weather/src/CustomPainter/snow_custom_painter.dart';
import 'package:colorful_weather/src/CustomPainter/yellow_custom_painter.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
         children: [_mainContent(size), _listSnowCircle()].expand((x) => x).toList()
       ),
      )
    );
  }

  List<Widget> _mainContent(Size size){
    return <Widget>[
      CustomPaint(
        size: Size(size.width, size.height),
        painter: SnowContentCustomPainter(),
        child: Container(
          alignment: Alignment.bottomLeft,
          height: size.height,
          width: size.width,
          margin: EdgeInsets.only(bottom: 70.0, left: 30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text('17', style: TextStyle(color: Colors.white, fontSize: 50.0),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('December', style: TextStyle(color: Colors.white, fontSize: 30.0),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 90.0,
                    child: Divider(
                      height: 6,
                      thickness: 2,
                      color: Color(0XFFFFC800),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Washington', style: TextStyle(color: Colors.white, fontSize: 30.0),),
                ],
              ),
            ],
          ),
        ),
      ),
      CustomPaint(
        size: Size(size.width, 180),
        painter: BlueCustomPainter(),
        child: Container(
          alignment: Alignment.centerLeft,
          height: 180,
          width: size.width,
          margin: EdgeInsets.only(left: 30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text('Snow',style: TextStyle(color: Colors.white, fontSize: 55.0),),
                  Icon(Iconsax.sun5,color: Colors.white, size: 40.0,)
                ],
              ),
              Row(
                children: [
                  Text('-2ºC',style: TextStyle(color: Colors.white, fontSize: 40.0),),
                ],
              ),
            ],
          ),
        ),
      ),
      CustomPaint(
        size: Size(size.width, 180),
        painter: YellowCustomPainter(),
      ),
      new Positioned(
        bottom: 20.0,
        left: 90.0,
        child: new Container(  
          width: 500.0,
          height: 620.0,          
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/IllustrationA.png"),
            ),
          ),
        )
      ),                 
    ];
  }

  List<Widget> _listSnowCircle(){
    return <Widget> [
      CustomPaint(
        painter: SnowCustomPainter(x: 210.0, y: 165.0, sizeCircle: 6.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 20.0, y: 230.0, sizeCircle: 3.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 120.0, y: 250.0, sizeCircle: 3.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 80.0, y: 330.0, sizeCircle: 3.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 150.0, y: 410.0, sizeCircle: 3.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 40.0, y: 470.0, sizeCircle: 5.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x: 180.0, y: 540.0, sizeCircle: 3.0),
        child: null
      ),
      CustomPaint(
        painter: SnowCustomPainter(x:80.0, y: 590.0, sizeCircle: 2.0),
        child: null
      )
    ];
  }
}


