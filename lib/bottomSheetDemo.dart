import 'package:flutter/material.dart';

class BottomSheetDemo extends StatefulWidget {
  BottomSheetDemo({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  String status = 'null';

  void bottomSheetDisplay(BuildContext context) {
    showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 200,
              child: Column(
                children: <Widget>[
                  //Status change to 'ON' when click
                  ListTile(
                    leading: const Icon(Icons.play_circle_outline),
                    title: const Text(
                      'ON',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.green),
                    ),
                    onTap: () {
                      setState(() {
                        status = 'ON';
                      });
                      //dismiss after click
                      Navigator.of(context).pop();
                    },
                  ),
                  //Status change to 'OFF' when click
                  ListTile(
                    leading: const Icon(Icons.stop_circle_outlined),
                    title: const Text(
                      'OFF',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    onTap: () {
                      setState(() {
                        status = 'OFF';
                      });
                      //dismiss after click
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Status : $status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  bottomSheetDisplay(context);
                },
                child: Text('Click Me to change status')),
          ],
        ),
      ),
    );
  }
}
