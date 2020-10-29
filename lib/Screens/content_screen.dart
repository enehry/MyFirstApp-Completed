import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {

  final String title;
  final String content;

  ContentScreen({@required this.title, @required this.content});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/urs_bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.9), BlendMode.srcATop)
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white,),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              Container(
                padding: EdgeInsets.all(50.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(title , style: TextStyle(
                        fontFamily: 'Pacifico', fontSize: 30.0,
                        fontWeight: FontWeight.w700, color: Colors.white
                      ),),
                      SizedBox(height: 20.0,),
                      Text(content, textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 18.0, color: Colors.white
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
