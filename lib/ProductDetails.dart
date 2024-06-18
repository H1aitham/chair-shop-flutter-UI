import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Productdetails extends StatefulWidget {
  final data;

  const Productdetails({super.key, this.data});

  @override
  State<Productdetails> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Productdetails> {
  @override
  String? country = 'c';
  int value = 0;

  void add() {
    setState(() {
      value++;
    });
  }

  void remov() {
    setState(() {
      value--;
    });
  }
 double _rotationAngle = 0.0;
  bool _rotateRight = true;

  void _rotateImage() {
    setState(() {
      if (_rotateRight) {
        _rotationAngle += 1.0; // Rotate 180 degrees
      } else {
        _rotationAngle -= 1.0; // Rotate back 180 degrees
      }
      _rotateRight = !_rotateRight;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 5000,
            height: 486,
            color: Color(0xffE3E3E3),
            child: Stack(
              children: [
                Positioned(
                  top: 319,
                  left: 67,
                  child: Container(
                    child: Image.asset('assets/images/Ellipse 4.png'),
                  ),
                ),
             Positioned(
                  top: 113,
                  left: 110,
                  child: GestureDetector(
                    onTap: _rotateImage,
                    child: AnimatedRotation(
                      turns: _rotationAngle,
                      duration: Duration(milliseconds: 500),
                      child: Image.asset('assets/images/im.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 410,
                  left: 198,
                  child: Container(
                    child: Image.asset('assets/images/Ellipse 5.png'),
                  ),
                ),
                Positioned(
                  top: 405,
                  left: 197,
                  child: Container(
                    child: Image.asset('assets/images/arrow-expand-03.png'),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 345,
                  child: Container(
                    child: Image.asset('assets/images/Group 12.png'),
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 32,
                  child: Container(
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios), // Custom icon
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Modern Chair',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff304E3E)),
                ),
                Image.asset('assets/images/Frame 16 (2).png')
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Armchair',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E8E)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                      text:
                          'The simple and elegant shape makes it very\nsuitable for those for you who like those of you\nwho wants a minimalist room',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff828282)),
                    ),
                    TextSpan(
                      text: ' Read More',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff416954)),
                    )
                  ]),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Image.asset('assets/images/hbb.png'),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/hcc.png'),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/haa.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Text(
                  'Coor',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff416954)),
                ),
                Radio(
                    // contentPadding: EdgeInsets.all(5),
                    activeColor: Color(0xff9BAFB0),
                    value: 'a',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    }),
                Radio(
                    fillColor: MaterialStatePropertyAll(
                      Color(0xff626060),
                    ),
                    activeColor: Color(0xff626060),
                    value: 'b',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    }),
                Radio(
                    fillColor: MaterialStatePropertyAll(
                      Color(0xffFF3434),
                    ),
                    // contentPadding: EdgeInsets.all(5),
                    activeColor: Color(0xffFF3434),
                    value: 'c',
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val;
                      });
                    }),
                SizedBox(
                  width: 180,
                ),
                Container(
                  width: 66,
                  height: 21,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffCDCBCB)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          add();
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff416954)),
                          )),
                          width: 20,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        '$value',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff416954)),
                      ),
                      InkWell(
                        onTap: () {
                          remov();
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff416954)),
                          )),
                          width: 20,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 370,
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff2C4939)),
            child: Center(
              child: Text(
                'Add to card | ₹12,500',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
