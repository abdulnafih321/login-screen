import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Login Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            Text('Remember Me'),
                          ],
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password?'),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.green), // Green background color
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0), // <-- sharp edges
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(Size(
                            double.infinity, 50)), // Same size for both buttons
                      ),
                    ),
                    SizedBox(height: 20), // Adding space between buttons
                    ElevatedButton.icon(
                      onPressed: () {
                        // Implement Google login functionality here
                      },
                      icon: Image.asset(
                        'assets/images/googlelogo.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      label: Text('Continue with Google',
                          style: TextStyle(color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.black), // Black background color
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0), // <-- sharp edges
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(Size(
                            double.infinity, 50)), // Same size for both buttons
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
