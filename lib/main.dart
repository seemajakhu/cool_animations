import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazing animation"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Text("Conguralations",style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                ),
              ),
            ),
            Stack(
              children:[
                Center(
                  child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_pkanqwys.json'),
                ),
                Center(
            child:Lottie.network('https://assets5.lottiefiles.com/packages/lf20_touohxv0.json'),
      ),

          ],
        ),
            Center(
              child: Text("you win",style: TextStyle(
                fontSize: 30,

              ),),
            ),
          ],
        ),
      )
    );
  }
}
