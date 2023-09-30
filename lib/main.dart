import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Profile') ,
      ),
      body: Scrollbar(
          child: ListView(
            padding: EdgeInsets.only(top: 16),
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage: AssetImage("images/01.jpg"),
                  //child: Text('John Doe'),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('John Doe',style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adlipiscing elit. '
                      'Sed aliquet en enim tristique, in iaculis libero porttitor',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
              ),
              Divider(height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                ],
              ),
              Divider(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                  Image.asset('images/02.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.scaleDown,),
                ],
              ),

            ],
          ),
        ));
  }
}

