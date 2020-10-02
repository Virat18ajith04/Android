import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(contact());
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0, // it is used for remove shadow in scaffold
          title: Text(
            "Contact Us",
            style: TextStyle(color: Colors.redAccent),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Center(
                child: Image.asset(
              'images/contact.jpg',
              height: 250,
            )),
            SizedBox(
              height: 10,
            ),
            Text(
              ' IF you Need Help \nFeel Free To Contact Us ',
              textAlign: TextAlign.center, //Allign Center text
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.alternate_email,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text('Write To Us'),
                        Text('contact@gmail.com')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.help,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text('FAQs'),
                        Text(
                          'Frequently Asked Question',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text('Contact No:'),
                        Text('1234567890')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                          size: 50,
                        ),
                        Text('Location'),
                        Text('Tirupur'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'CopyRights -> 2020',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'My Rights are Reserved',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
