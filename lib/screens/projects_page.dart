import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ui_flutter_lab_exam/responsive_layout.dart';
import 'package:ui_flutter_lab_exam/data/person.dart';
import 'package:ui_flutter_lab_exam/data/project.dart';
import 'package:ui_flutter_lab_exam/screens/home_page.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  Widget projectCard(Project project) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: SizedBox(
        width: 400,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                Text(project.description),

                if (project.gitlink != null) ...[
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Git Link: ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: "GitHub Repository  →",
                          style: const TextStyle(
                            color: Color(0xFFE53935),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              final url = Uri.parse(project.gitlink!);
                              await launchUrl(
                                url,
                                mode: LaunchMode.externalApplication,
                              );
                            },
                        ),
                      ],
                    ),
                  ),

                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Projects",
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            const SizedBox(height: 30),

            ...Ainesh.projects.map((project) {
              return projectCard(project);
            }),

            const SizedBox(height: 10),

            TextButton(
              onPressed:(){
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
              child: Text("Back to Home")
            ),
          ]
        ),
      ),
    );
  }
}