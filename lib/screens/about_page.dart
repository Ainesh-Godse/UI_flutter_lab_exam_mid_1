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
        title: const Text(
          "About Me",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

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

                const SizedBox(height: 30),

                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(Ainesh.profilePhoto),
                ),

                const SizedBox(height: 30),

                Text(
                  Ainesh.introduction,
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 30),

                Text(
                  "Skills",
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(height: 30),

                Container(
                  height: 3,
                  width: 40,
                  color: const Color(0xFFE53935),
                ),

                const SizedBox(height: 30),

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

                const SizedBox(height: 30),

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