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
        title: const Text(
          "My Portfolio",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      )
      ,
      body: ResponsiveLayout(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 30),

              Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE53935),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(Ainesh.profilePhoto),
                ),
              ),

              const SizedBox(height: 30),
              //name
              Text(
                Ainesh.name,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),

              const SizedBox(height: 30),

              Text(
                Ainesh.course,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              TextButton.icon(
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
                  icon: const Icon(Icons.person_outline),
                  label: const Text("About Me")
              ),
              const SizedBox(height: 10),

              TextButton.icon(
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
                icon: const Icon(Icons.code),
                label: const Text("Projects"),
              )
            ]
        ),
      ),
    );
  }
}