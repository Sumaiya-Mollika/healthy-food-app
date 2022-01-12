import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FoodDetails extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  FoodDetails({this.heroTag, this.foodName, this.foodPrice});

  //const FoodDetails({ Key? key }) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade400,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.indigo.shade400,
          title: Text(
            'Details',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 5,
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                )),
          ]),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                  top: 75,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                  )),
              Positioned(
                  top: 30,
                  left: (MediaQuery.of(context).size.width / 2) - 100,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: 200,
                        width: 200,
                      ))),
              Positioned(
                  top: 250,
                  left: 25,
                  right: 25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.foodName,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.foodPrice,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          Container(
                            height: 25,
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          Container(
                            width: 125,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                color: Colors.indigo.shade400),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (_counter > 0) _counter--;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 20,
                                      )),
                                ),
                                Text(
                                  '$_counter',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Center(
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _counter++;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Order Info",
                        style: TextStyle(
                            color: Colors.indigo.shade400,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "${widget.foodPrice * _counter}",
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivary Charge",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(" ${delivary}"),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: InkWell(
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 40),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade400,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "ORDER",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }

  var delivary = 30;
}
