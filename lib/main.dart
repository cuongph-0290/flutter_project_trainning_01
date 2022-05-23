import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool rememberPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color(0xFFFE7446),
            const Color(0xFFF5366A),
          ],
        )),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png',
                width: MediaQuery.of(context).size.width * 0.55),
            Text(
              'Find and Meet people around',
              style: TextStyle(
                  height: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white.withOpacity(0.8)),
            ),
            Text(
              'you to find LOVE',
              style: TextStyle(
                  height: 1,
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white.withOpacity(0.8)),
            ),
            SizedBox(height: 40),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {},
              child: Text('SIGN IN', style: TextStyle(height: 1, fontSize: 30)),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(
                children: <Widget>[
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.5)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.5)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.5)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Flexible(fit: FlexFit.tight, child: SizedBox()),
                      Checkbox(
                          side: BorderSide(color: Colors.orange),
                          fillColor: MaterialStateProperty.all(Colors.orange),
                          value: this.rememberPassword,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                this.rememberPassword = value;
                              });
                            }
                          }),
                      SizedBox(width: 20),
                      Text(
                        'Remember Password',
                        style: TextStyle(
                            height: 1,
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                            color: Colors.white.withOpacity(0.8)),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide(color: Colors.red)))),
                    onPressed: () {},
                    child: Container(
                        padding: EdgeInsets.fromLTRB(90, 18, 90, 18),
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Flexible(fit: FlexFit.tight, child: SizedBox()),
                      TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide(
                                        width: 15, color: Colors.white)))),
                        onPressed: () {},
                        child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Icon(Icons.facebook_sharp,
                                color: Colors.white, size: 50)),
                      ),
                      SizedBox(width: 30),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                    side: BorderSide(
                                        width: 15, color: Colors.white)))),
                        onPressed: () {},
                        child: Container(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Icon(Icons.facebook_sharp,
                                color: Colors.white, size: 50)),
                      ),
                      Flexible(fit: FlexFit.tight, child: SizedBox()),
                    ],
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {},
                    child: Text('FORGOT PASSWORD',
                        style: TextStyle(
                            height: 1,
                            fontSize: 18,
                            decoration: TextDecoration.underline)),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
