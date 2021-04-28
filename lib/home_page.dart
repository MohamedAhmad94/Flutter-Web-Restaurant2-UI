import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Color(0xff570ec0),
              Color(0xff3af2fe),
            ],
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 30),
          child: ListView(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                    height: 100,
                  ),
                  Spacer(),
                  menuItem("Pizza".toUpperCase(), () {}),
                  menuItem("Special Offers".toUpperCase(), () {}),
                  menuItem("Meals".toUpperCase(), () {}),
                  menuItem("Contact".toUpperCase(), () {}),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Order Now",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ],
              ),
              //Pizza Delivery Section
              Container(
                padding: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.6,
                        child: Column(
                          children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.width / 12),
                            Row(
                              children: [
                                Radio(
                                    value: 1,
                                    groupValue: 0,
                                    onChanged: (value) {}),
                                SizedBox(width: 2),
                                Text("Home Delivery",
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                SizedBox(width: 40),
                                Radio(
                                    value: 0,
                                    groupValue: 0,
                                    onChanged: (value) {}),
                                SizedBox(width: 2),
                                Text("Pickup",
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ],
                            ),
                            SizedBox(height: 1),
                            Card(
                              elevation: 7.0,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Select City",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 100),
                                    Icon(
                                      Icons.store,
                                      color: Colors.blue,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Select Store",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Pizza illustration Section
                      Container(
                        width: MediaQuery.of(context).size.width / 2.2,
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.width / 6),
                        child: Image(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          width: MediaQuery.of(context).size.width / 1,
                          height: MediaQuery.of(context).size.height / 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  menuItem(String title, VoidCallback press) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
      onPressed: press,
      child: Text(title.toUpperCase(),
          style: Theme.of(context).textTheme.headline1),
    );
  }
}
