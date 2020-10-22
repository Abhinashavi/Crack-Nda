
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndaapp/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:ndaapp/views/home.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Future signInEmailAndPass(String email, String password) async {
    try {
      AuthResult authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {
//      print("hello");
//
//      print(e.toString());
      Fluttertoast.showToast(msg: e.message,
        toastLength: Toast.LENGTH_LONG,);

    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult authResult = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = authResult.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {
      Fluttertoast.showToast(msg: e.message,
        toastLength: Toast.LENGTH_LONG,);
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {

      print(e.toString());
      return null;
    }
  }
}
