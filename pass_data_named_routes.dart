import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // home
      routes: {
        '/' : (context) => MyFirstPage(),
        MySecondPage.pageRoute : (context) => MySecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Programming తెలుగులో")),
      body: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: RaisedButton(onPressed: (){
           //Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondPage() ));
           Navigator.pushNamed(context, MySecondPage.pageRoute,arguments: MySecondPageArguments(title: "Second Screen",message: "This hello from Programming తెలుగులో"));
          },child: Text("Go To Second Screen"),),
        ),
      )
    );
  }
}

class MySecondPageArguments{
  String title;
  String message;
  MySecondPageArguments({this.title,this.message});
}


class MySecondPage extends StatelessWidget {
  
  static String pageRoute = "/SecondPage";
  @override
  Widget build(BuildContext context) {
  
  MySecondPageArguments mySecondPageArguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(title: Text(mySecondPageArguments.title)),
      body: Scaffold(
        body: Container(
          child: Center(child: Text(mySecondPageArguments.message)),
        ),
      )
    );
  }
}
