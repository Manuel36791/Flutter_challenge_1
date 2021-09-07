import 'package:flutter/material.dart';
import 'package:flutter_challenge_1/modules/login_screen/login_screen.dart';
import 'package:flutter_challenge_1/shared/styles/icon_broken.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Let\s Get Started',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Create an account to Q Allure to get all features',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  fillColor: Colors.blue,
                  labelText: 'User Name',
                  prefixIcon: Icon(
                    IconBroken.User1,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  fillColor: Colors.blue,
                  labelText: 'Emai',
                  prefixIcon: Icon(IconBroken.Message),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  fillColor: Colors.blue,
                  labelText: 'Phone',
                  prefixIcon: Icon(
                    IconBroken.Call,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  fillColor: Colors.blue,
                  labelText: 'Password',
                  prefixIcon: Icon(
                    IconBroken.Lock,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  fillColor: Colors.blue,
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(
                    IconBroken.Lock,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    100.0,
                  ),
                ),
                child: Material(
                  //Wrap with Material
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  elevation: 18.0,
                  color: Colors.blue,
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: Colors.blue,
                    child: new Text(
                      'CREATE',
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                  ),
                  TextButton(
                      onPressed: () {
                        navigateTo(context, LoginScreen());
                      },
                      child: Text('Login here'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateTo(context, widget) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      );
}
