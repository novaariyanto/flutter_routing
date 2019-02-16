import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 1"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: (){
                button1(context);
                },
              child: new Text("Go to Screen 2"),
            ),
            new RaisedButton(
                onPressed: (){
                  button3(context);
                  },
                child: new Text("Go to Screen 3"),
                ),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 2"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed: (){
              button2(context);
            },child: new Text("Button close"),
            )
          ],
        ),
      ),
    );
  }
}
class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Screen 3"),
      ),
      body: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(onPressed: (){
              button2(context);
            },child: new Text("Button close"),
            )
          ],
        ),
      ),
    );
  }

}

void main(){
  runApp(
    new MaterialApp(
      home: new Screen1(),
      routes: <String,WidgetBuilder>{
        '/screen1':(BuildContext context)=> new Screen1(),
        '/screen2':(BuildContext context)=>new Screen2(),
        '/screen3':(BuildContext context)=>new Screen3(),
      },
    )
  );
}
void button1(BuildContext context){
  print("button 1");
  Navigator.of(context).pushNamed('/screen2');
}
void button2(BuildContext context){
  print("button close");
  Navigator.of(context).pop(true);
}
void button3(BuildContext context){
  print("button 3");
  Navigator.of(context).pushNamed('/screen3');
}