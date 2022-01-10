import 'package:boat_carousel_using_flutter/data/boats_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  final double height;
  final double width;
  HomePage({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState(height, width);
}

class _HomePageState extends State<HomePage> {
  final double height;
  final double width;

  PageController _controller = PageController(viewportFraction:0.4);
   double _page = 0.0;

  _HomePageState(this.height, this.width);


@override
  void initState() {
    
    _controller.addListener(() {
      setState(() {
        _page = _controller.page!;
      });
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // print(_page);
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            height: height * 0.15,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              margin: EdgeInsets.only(top : 40),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                GestureDetector(
                  onTap: () {
                    print("Boats");
                  },
                  child: Text("Boats", style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold,
                                                            letterSpacing: 1,
                                                            fontSize:30)
                                                            ) ),
                ),
                GestureDetector(
                  onTap: () {
                    print("Search Icon");
                  },
                  child: Icon(CupertinoIcons.search, size: 35, color: Colors.black.withOpacity(0.6)))
              ],),

            )),
        Positioned(
            top: height * 0.15,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: PageView.builder(
                
                controller: _controller,
                itemCount: boats.length,
                itemBuilder: (context, index) {

                  double result = (_page - index)+1;
                  double values = (  (-0.7*(result*result))+ (1.4*result) +0.3  );
                  print(values);
                  return Transform.translate(
                    offset: Offset(0,-19),
                    child: Transform.scale(
                      scale: values,
                      child: Opacity(
                        opacity: values.clamp(0, 1),
                        child: Container(
                          height: height * 0.9,
                         
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if(index == _page){
                                     print(boats[index].name);
                                  }
                                 
                                },
                                
                                child: Image.asset(
                                  boats[index].image,
                                  height: height * 0.69,
                                                        
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                height: height*0.16,
                              
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    
                               Text(boats[index].name, style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w500,
                                                          fontSize:30)
                                                          ))
                                                          ,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("By ", style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w200,
                                                          fontSize:15)
                                                          )
                                                          ),
                                    Text("${boats[index].maker}", style: GoogleFonts.poppins(
                                                      textStyle: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.w400,
                                                          fontSize:15)
                                                          )),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("Specs");
                                  },
                                  child: Container(
                                    width: width * 0.2,
                                    margin: EdgeInsets.symmetric(vertical: height*0.01),
                                    color: Colors.transparent,
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("SPEC", style: GoogleFonts.poppins(
                                                        textStyle: TextStyle(
                                                            color:Colors.deepPurple.withOpacity(0.8),
                                                            fontWeight: FontWeight.w400,
                                                            letterSpacing: 2,
                                                            fontSize:15)
                                                            )),
                                          Icon(CupertinoIcons.forward, color: Colors.deepPurple.withOpacity(0.8),)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                                  ],
                                ),
                              ),
                  
                             
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ))
      ],
    )
    );
  }
}
