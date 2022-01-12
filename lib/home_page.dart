import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nutrition_app/details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent.shade400,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent.shade400,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_list,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RichText(
              text: TextSpan(
                text: 'Healthy ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Food',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 25)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75))),
              child: ListView(
                children: [
                  foodItem(
                      "https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/214984060/vegan-breakfast-salad-12.jpg",
                      'HEALTHY BREAKFAST SALAD',
                      '150/-'),
                  foodItem(
                      "https://mariamarlowe.com/wp-content/uploads/2019/12/Lemon-Olive-Chickpea-Salad-Maria-Marlowe-1-2-500x500.jpg",
                      'Lemon & OliveChickpea Salad',
                      '200/-'),
                  foodItem(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk6ZaKew3g_NoA14lh2x3cu4o3SM-IgAAWxQ&usqp=CAU",
                      'Big Italian Salad (Special)',
                      '250/-'),
                  foodItem(
                      "https://thumbs.dreamstime.com/z/fresh-vegetable-salad-lettuce-tomato-cucumber-plate-29770048.jpg",
                      'Fresh Vagitable Salad',
                      '150/-'),
                  foodItem(
                      "https://cdn.loveandlemons.com/wp-content/uploads/2021/04/green-salad.jpg",
                      'Simple Green Salad',
                      '100/-'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 55,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 55,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 55,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.black87,
                              border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: TextButton(
                            child: Text(
                              'CHEAKOUT',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {},
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  foodItem(String imgpath, String foodName, String price) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => FoodDetails(
                  heroTag: imgpath, foodName: foodName, foodPrice: price)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Hero(
                      tag: imgpath,
                      child: Image(
                        image: NetworkImage(imgpath),
                        fit: BoxFit.cover,
                        height: 60,
                        width: 60,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodName,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
