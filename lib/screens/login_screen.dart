import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/colors.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BrandColors.tailColor,
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            height: 350,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      'Logo Here',
                      style: TextStyle(fontSize: 26.0),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Your Username',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: BrandColors.tailColorDark))),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Your Password',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.visibility_rounded,color: BrandColors.tailColorDark,),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: BrandColors.tailColorDark))),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.login),
                      label: Text('Login'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            BrandColors.tailColorDark),
                      ),
                    ),
                     SizedBox(
                      height: 18.0,
                    ),
                    Text('Forgot password ?',style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline),)
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
