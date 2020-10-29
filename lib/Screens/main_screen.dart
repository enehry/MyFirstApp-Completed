import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/content_screen.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/menu_button.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/urs_bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.blue.withOpacity(0.7), BlendMode.srcATop)
            )
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),
            padding: EdgeInsets.all(40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      height: 80.0,
                      image: AssetImage('images/university-seal.png'),),
                    SizedBox(width: 20.0,),
                    Column(
                      children: [
                        Text('University of', style: TextStyle(fontSize: 25.0),),
                        Text('Rizal System', style: TextStyle(fontSize: 25.0),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                MenuButton(
                  title: 'URS MISSION',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ContentScreen(
                          title: 'URS Mission',
                          content: kMission,
                        )
                    ));
                  },
                ),
                MenuButton(
                  title: 'URS VISION',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ContentScreen(
                          title: 'URS Vision',
                          content: kVision,
                        )
                    ));
                  },
                ),
                MenuButton(
                  title: 'URS QUALITY POLICY',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ContentScreen(
                          title: 'URS Quality Policy',
                          content: kQP,
                        )
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




