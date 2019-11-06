import 'package:flutter/material.dart';

void main() => runApp(BTC());

class BTC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        //centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.format_bold),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text('Bennett Care App'))
          ],
        ),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text("Today's AQI :: 356/500",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
            new RaisedButton(
              child: Text(
                "LAUNDRY DHOBI CLINIC",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              onPressed: null,
            ),
            new RaisedButton(
              child: Text(
                "SHARE A CAB",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
    ));
  }
}
