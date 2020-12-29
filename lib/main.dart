import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text('Login Page'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 25),
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: TextStyle(fontFamily: 'DancingScript', fontSize: 30),
              ),
              Image.asset('images/logo.png'),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 25, top: 30, bottom: 20),
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 25),
                child: Row(
                  children: [
                    Icon(Icons.security),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      color: Colors.green[500],
                      textColor: Colors.white,
                      onPressed: () {/*..*/},
                      child: Text('Login'),
                    ),
                    SizedBox(width: 20),
                    FlatButton(
                      color: Colors.green[500],
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('Register'),
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
