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
              _buildButtonColumn(Colors.red, Icons.games, 'google'),
              _buildButtonColumn(Colors.blue, Icons.face, 'Facebook')
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(32),
                child: Text('Or Login With',
                style: TextStyle(
                  color: Colors.grey,
                ),
                )
              ) 
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Email',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
            Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 100,
                width: 384,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Please Enter Your Email',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.zero, right: Radius.zero,),
                    borderSide: BorderSide(
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
              )
            ]
          ),
          Row(
            children: <Widget>[
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
          Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: 50,
              width: 384,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Please Enter Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.zero, right: Radius.zero,),
                    borderSide: BorderSide(
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
            ),
          ]
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(bottom: 32),
                child: FlatButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline
                      ),
                    )
                  ) 
              ),    
            ],
          ),
              IntrinsicWidth(
                stepHeight: 200,
                stepWidth: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 10),
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          'SINGIN',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )
                      ),
                    )
                  ],
                ),
              )
            ],
          )
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
