import 'package:flutter/material.dart';
import 'package:ui_flutter_lab_exam/responsive_layout.dart';
import 'package:ui_flutter_lab_exam/data/person.dart';
import 'package:ui_flutter_lab_exam/screens/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("About Me"),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder:
                    (context){
                      return HomePage();
                    }
              ),
            );
          },
        ),
      ),

      body: ResponsiveLayout(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(Ainesh.profilePhoto),
                ),

                Text(
                  Ainesh.introduction,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                Text(
                  "Skills",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                // Dynamically renders all skills
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: Ainesh.skills.map((skill) {
                    return Chip(
                      label: Text(skill),
                    );
                  }).toList(),
                ),

                SizedBox(height: 20),

                TextButton(
                    onPressed:(){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder:
                            (context){
                              return HomePage();
                            },
                        )
                      );
                    },
                    child: Text("Back to Home")
                ),
              ]
            ),
          ),
        ),
      )
    );
  }
}