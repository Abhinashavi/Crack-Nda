import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ndaapp/helper/functions.dart';
import 'package:ndaapp/services/auth.dart';
import 'package:ndaapp/views/home.dart';
import 'package:ndaapp/views/signin.dart';
import 'package:ndaapp/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String email, password, name;
  AuthService authService = new AuthService();
  bool _isloading = false;

  signUp() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isloading = true;
      });
      await authService
          .signUpWithEmailAndPassword(email, password)
          .then((value) {
        if (value != null) {
          setState(() {
            _isloading = false;
          });

          Fluttertoast.showToast(
            msg: "Logged In Successfully",
            toastLength: Toast.LENGTH_LONG,
          );
          HelperFunctions.saveUserLoggedInDetails(isLoggedin: true);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignUp()));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: _isloading
          ? Container(
              child: Center(
                  child: SpinKitFadingCube(
                size: 50,
                color: Colors.greenAccent,
              )),
            )
          : SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: 250,
                        // color: Colors.white,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage("lib/images/signup.png"),
                                fit: BoxFit.fill)),
                      ),
//                    Spacer(),
                    SizedBox(height: 10,),
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty ? "Enter Name" : null;
                        },
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          icon: Icon(Icons.person),
                          hintText: "Enter Your Name",
                        ),
                        onChanged: (val) {
                          name = val;
                        },
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty ? "Enter EmailID" : null;
                        },
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          icon: Icon(Icons.email),
                          hintText: "Email Address",
                        ),
                        onChanged: (val) {
                          email = val;
                        },
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (val) {
                          return val.isEmpty ? "Enter Password" : null;
                        },
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.teal)),
                          icon: Icon(Icons.vpn_key),
                          hintText: "Password",
                        ),
                        onChanged: (val) {
                          password = val;
                        },
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          signUp();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFF5D686B),
                              borderRadius: BorderRadius.circular(25)),
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(fontSize: 15.5),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize: 15.5,
                                    color: Color(0xFF5D686B),
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ),
      backgroundColor: Color(0xFF8CAAB1),
    );
  }
}
