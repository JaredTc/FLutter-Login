import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
       resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Container(
          
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(5.0, 70.0, 10.0, 0.0),
                child: Stack(
                  children: <Widget>[
          
                  Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                       children: <Widget>[
                         InkWell( onTap: () {},  //=> _notifier.value = mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
                           child:  Icon( Icons.remove_red_eye ),

                         ),
                       
                ],
                ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: Text(
                  'Hello,',
                  style: TextStyle(fontSize: 120.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                child: Text(
                  'Devs',
                  style: TextStyle(fontSize: 120.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(270.0, 170.0, 0.0, 0.0),
                child: Text(
                  '.',
                  style: TextStyle(fontSize: 150.0, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only( top: 35.0, left: 20.0 , right: 20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(
                  fontFamily: 'Monserrat',
                  fontWeight: FontWeight.bold,
                  
                  
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
               TextField(
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(
                  fontFamily: 'Monserrat',
                  fontWeight: FontWeight.bold,
                 
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
               Container(
                 alignment: Alignment(1.0, 0.0 ),
                padding: EdgeInsets.only(top: 5.0, left: 20.0),
                child: InkWell(
                  child: Text('Forgot password',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(onTap: () {},
                    child: Center(
                      child: Text('Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Monserrat',

                      ),
                      ),
                    )
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 50.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent,
                        style: BorderStyle.solid,
                        width: 1.0
                      ),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/imgs/facebook.png')),
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text('Login  with facebook',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monserrat',
                            color: Colors.white

                          ),
                           ),

                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: 40.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'New to Devs ?',
              style: TextStyle(
                fontFamily: 'Monserrat',
                ),
            ),
            SizedBox(width: 5.0),
            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed('/signup');
              },
              child: Text('Signup',
              style: TextStyle(
                color: Colors.green,
                fontFamily: 'Monserrat',
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),),
            ),
          ],
        ),
        
      ],
      ),
    );
   
}

}