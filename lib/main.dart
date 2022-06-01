import 'package:flutter/material.dart';

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

        primarySwatch: Colors.blue,
      ),
      home:BasicsPage(),
    );
  }
}

class BasicsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var platform=Theme.of(context).platform;
    return Scaffold(


      body: Container(height: size.height,
                    width: size.width,
          color: Colors.teal,
        margin: EdgeInsets.all(15),

        child:Center(
          child: Card(
            child:fromAsset(size),
            elevation: 7.5,
            color: Colors.red,
            margin: EdgeInsets.all(15),


          ),
        ),
        
      ),


    );
  }
    Image fromAsset(Size size)
    {
      return Image.asset("images/painted-guitar-1087209_1920.jpg",
          fit: BoxFit.cover,
          height: size.height,
          width: size.width,
          );
    }
    Text RochText()
    {
      return Text.rich(
          TextSpan(
              text: "Salut",
              style: TextStyle(
                color: Colors.amber,

              )
              ,children: [
            TextSpan(
                text: "Bamos",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black12
                )
            ),
            TextSpan(
                text: "Bamo Sauce",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                )
            )
          ]
          )
      );
    }

  Text SimpleTexte(String texte){
    return Text(
      texte,
      style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.w300,
          fontStyle: FontStyle.italic
      ),
      textAlign: TextAlign.center,

    );

  }


}
