import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF679b9b), Color(0xFF637373)])),
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 150.0),
          Align(
            alignment: Alignment.topRight,
            
          ),
          Text(
            'Check availability',
            style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontFamily: 'Cabin',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 25.0),
          TextField(
            decoration: InputDecoration(
                hintText: 'Enter your code',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.arrow_forward, color: Colors.white),
                border: InputBorder.none),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height: 40.0),
          Text(
            'We want to make sure the car is available',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 40.0),
          Image.asset('assets/porsche.png', fit: BoxFit.cover, height: 200.0),
          Container(
            height: 0.5,
            color: Colors.white,
          ),
          SizedBox(height: 10.0),
          Text(
            'have you  an account?',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Text(
                  '           Sign In',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
              SizedBox(width: 10.0),
              IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    ));
  }
}
