import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final FirebaseAuth firebaseAuth=FirebaseAuth.instance;
final GoogleSignIn googleSignIn=GoogleSignIn();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter FlatButton '),
          ),
          body: Center(child: Column(children: <Widget>[

            Container(
              margin: EdgeInsets.all(80),
              child: FlatButton(
                child: Text('Login'),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: _signInWithGoogle,
              ),
            ),
          ]
          ),
          ),
      ),
    );
  }


  _signInWithGoogle () async {
    final GoogleSignInAccount googleuser=await googleSignIn.signIn();
    final GoogleSignInAuthentication googleauth=await googleuser.authentication;
    final AuthCredential credential=GoogleAuthProvider.getCredential(
       idToken: googleauth.idToken,accessToken: googleauth.accessToken);
    final FirebaseUser user=(await firebaseAuth.signInWithCredential(credential)).user;
  }
}

