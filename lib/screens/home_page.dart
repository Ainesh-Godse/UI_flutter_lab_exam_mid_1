import 'package:flutter/material.dart';
import 'package:ui_flutter_lab_exam/responsive_layout.dart';
import 'package:ui_flutter_lab_exam/data/person.dart';
import 'package:ui_flutter_lab_exam/screens/about_page.dart';
import 'package:ui_flutter_lab_exam/screens/projects_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Portfolio"),

      ),
      body: ResponsiveLayout(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(Ainesh.profilePhoto),
              ),

              //name
              Text(
                Ainesh.name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold ,
                ),
                textAlign: TextAlign.center,
              ),

              Text(
                Ainesh.course,
                textAlign: TextAlign.center,
              ),

              TextButton(
                  onPressed:(){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context){
                            return AboutPage();
                          }
                      ),
                    );
                  },
                  child: Text("About Me")
              ),

              TextButton(
                  onPressed:(){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder:
                              (context){
                            return ProjectsPage();
                          }
                      ),
                    );
                  },
                  child: Text("Projects")
              ),
            ]
        ),
      ),
    );
  }
}