import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import "dart:math" show pi;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  var isfirst=true;


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var y = 100.0;
  var oneheight;
  var currentheight;
  var half;
  List<Widget> items =[
    Icon(Icons.add,),
    Icon(Icons.description,),
    Icon(Icons.backup,),
    Icon(Icons.settings,)
  ];


  @override
  Widget build(BuildContext context) {

    if(widget.isfirst){
      oneheight=MediaQuery.of(context).size.height/items.length;

      currentheight=oneheight/2;
      half=oneheight/2;
      y=currentheight;
      widget.isfirst=false;
    }


    double myheight=    MediaQuery.of(context).size.height;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body:Row(
        children: [
          Container(

            height: myheight,
            child: Stack(
                children:  [

                  MyDrawer(y),
                  Positioned(
                    left: 0,
                    right: 10,
                    bottom: 0 ,
                    top: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: items.map((item) {
                          return

                            Expanded(child: InkWell(

                              child:  item,
                              onTap: (){
                                _buttonTap(items.indexOf(item));
                              },
                            ),);
                          /* Container(

                       child: InkWell(
                         onTap: (){
                           _buttonTap(items.indexOf(item));
                         },
                         child: item,
                       ),
                     );*/
                        }).toList()
                      /*  children: [
                  Expanded(child: InkWell(

                    child:  const Icon(Icons.add,),
                    onTap: (){
                      y=y+50;
                      setState(() {

                      });
                    },
                  ),),

                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=y+50;
                       setState(() {

                       });
                     },
                   ),),
                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=y+50;
                       setState(() {

                       });
                     },
                   ),),
                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=currentheight/2;
                       setState(() {
                         print(myheight);
                         print(currentheight);
                         print(y);
                       });
                     },
                   ),),
                 ],*/
                    ),

                  ),
                ]),
          ),
        ],
      ),
      drawer: /*Column(
        children: [

         Stack(
           children: [
             CustomPaint(

               size: Size(200,
                   (200*0.5833333333333334).toDouble()),
               painter:  RPSCustomPainter(),
               child: Container(
                 height: MediaQuery.of(context).size.height,
                 width: 700,
               ),
             ),
             const Positioned(
               left: 0,
               right: 0,
               bottom:   0,
               child: InkWell(
                 child: Icon(Icons.add),
               ),
             ),
           ],
         )
        ],
      ),*/
      Container(

        height: myheight,
        child: Stack(
            children:  [

              MyDrawer(y),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0 ,
                top: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: items.map((item) {
                      return

                        Expanded(child: InkWell(

                          child:  item,
                          onTap: (){
                            _buttonTap(items.indexOf(item));
                          },
                        ),);
                      /* Container(

                       child: InkWell(
                         onTap: (){
                           _buttonTap(items.indexOf(item));
                         },
                         child: item,
                       ),
                     );*/
                    }).toList()
                  /*  children: [
                  Expanded(child: InkWell(

                    child:  const Icon(Icons.add,),
                    onTap: (){
                      y=y+50;
                      setState(() {

                      });
                    },
                  ),),

                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=y+50;
                       setState(() {

                       });
                     },
                   ),),
                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=y+50;
                       setState(() {

                       });
                     },
                   ),),
                   Expanded(child: InkWell(

                     child:  Icon(Icons.add,),
                     onTap: (){
                       y=currentheight/2;
                       setState(() {
                         print(myheight);
                         print(currentheight);
                         print(y);
                       });
                     },
                   ),),
                 ],*/
                ),

              ),
            ]),
      ),

    );
  }

  void _buttonTap(int index) {
    print('position :$index');

    setState(() {

      if(index==0){
        y=oneheight/2;
      }else
      {
        y=oneheight*(index+1)-half;
      }
      print(y);
    });
  }
}






class MyDrawer extends StatelessWidget {
  var y = 100.0;
  MyDrawer(this.y);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      shape: MyDrawerShape(y),
      elevation: 4,
      child: SizedBox.fromSize(size: Size.fromWidth(100)),
    );
  }
}

class MyDrawerShape extends ShapeBorder {
  var y = 100.0;
  MyDrawerShape(this.y);


  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  ui.Path getInnerPath(ui.Rect rect, {ui.TextDirection? textDirection}) => getOuterPath(rect);

  @override
  ui.Path getOuterPath(ui.Rect rect, {ui.TextDirection? textDirection}) {

    final radius1 = 8.0;
    final radius2 = 40.0;
    final rect1 = Rect.fromCircle(center: Offset(rect.right - radius1, y - radius1 - radius2), radius: radius1);
    final rect2 = Rect.fromCircle(center: Offset(rect.right - radius1 - radius2 / 2, y), radius: radius2);
    final rect3 = Rect.fromCircle(center: Offset(rect.right - radius1, y + radius1 + radius2), radius: radius1);
    return Path()
      ..moveTo(rect.topLeft.dx, rect.topLeft.dy)
      ..lineTo(rect.topRight.dx, rect.topRight.dy)
      ..arcTo(rect1, 0, pi / 2, false)
      ..arcTo(rect2, -pi / 2, -pi, false)
      ..arcTo(rect3, -pi / 2, pi / 2, false)
      ..lineTo(rect.bottomRight.dx, rect.bottomRight.dy)
      ..lineTo(rect.bottomLeft.dx, rect.bottomLeft.dy)
    ;
  }

  @override
  void paint(ui.Canvas canvas, ui.Rect rect, {ui.TextDirection? textDirection}) {
  }

  @override
  ShapeBorder scale(double t) => this;
}
