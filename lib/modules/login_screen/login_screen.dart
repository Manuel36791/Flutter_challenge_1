import 'package:flutter/material.dart';
import 'package:flutter_challenge_1/modules/register_screen/register_screen.dart';
import 'package:flutter_challenge_1/shared/styles/icon_broken.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 200.0,
                width: double.infinity,
                child: Image(
                  image: AssetImage(
                    'assets/images/login_illustration.jpg',
                  ),
                ),
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'Log in to your existant account of Q Allure',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.0)),
                        fillColor: Colors.blue,
                        labelText: 'Email',
                        prefixIcon: Icon(
                          IconBroken.Message,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
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
                      height: 5.0,
                    ),
                    Text(
                      'forgot password?',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
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
                      'LOG IN',
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Or connect using',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFF1877F2),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.0,
                            child: Image(
                              image: NetworkImage(
                                'https://image.flaticon.com/icons/png/512/2111/2111392.png',
                                scale: 25.0,
                              ),
                            ),
                          ),
                          Text(
                            'Facebook',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFFEA4335),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40.0,
                            child: Image(
                              image: NetworkImage(
                                'https://image.flaticon.com/icons/png/512/2991/2991147.png',
                                scale: 25.0,
                              ),
                            ),
                          ),
                          Text(
                            'Google',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                      onPressed: () {
                        navigateTo(context, RegisterScreen());
                      },
                      child: Text('Sign Up'))
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
