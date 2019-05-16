import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login page',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Screen(),
    );
  }
  }

class Screen extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Screen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu), 
              onPressed: () {},
            );
          },
        ),
        title: Text('Propalyer'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 100,
              
              child: Container(
                padding: const EdgeInsets.all(32),
              child: RichText(
                text: TextSpan(
                  text: 'MEMBER ',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'LOGIN',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 32
                    )
                   )
                  ]
                )
              )
              )
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildButtonColumn(Colors.red, Icons.face, 'google'),
              _buildButtonColumn(Colors.blue, Icons.games, 'Facebook')
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(32),
                child: RichText(
                  text: TextSpan(
                    text: 'Or Login With',
                    style: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                      color: Colors.grey
                    )
                  ),
                )
              ) 

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      text: 'Email',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      )
                    ),
                  ),
                ),
              )
            ],
          ),
           Row(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Please Enter Your Email',
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.zero, right: Radius.zero,),
                    borderSide: BorderSide(color: Colors.lightBlue,
                    ),
                  ),
                ),
                validator : (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
             ),
            ]
          ),
          Row(
            children: <Widget>[
              Container(
                child: RichText(
                  text: TextSpan(
                    text: 'Password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )
                  ),
                ),
              )
            ],
          ),
           Row(
            children: <Widget>[
              SizedBox(
                height: 50,
                width: 400,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Please Enter Password',
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.zero, right: Radius.zero,),
                    borderSide: BorderSide(color: Colors.lightBlue,
                    ),
                  ),
                ),
                validator : (val) {
                  if(val.length==0) {
                    return "Password cannot be empty";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
             ),
            ]
          ),
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FlatButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: RichText(
                      text: TextSpan(
                        text: 'Forgot Password?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                        )
                      ),
                    ),
                  )
                    
                  )
                ),
            ],
          ),
          Row(
            children: <Widget>[
              IntrinsicWidth(
                stepHeight: 200,
                stepWidth: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: RichText(
                      text: TextSpan(
                        text: 'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                        )
                      ),
                    ),
                    ),
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: RichText(
                      text: TextSpan(
                        text: 'SINGUP',
                        style: TextStyle(
                          color: Colors.red,
                        )
                      ),
                    ),
                    )
                  ],
                ),
              )
            ],
          )
            ]
          ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
