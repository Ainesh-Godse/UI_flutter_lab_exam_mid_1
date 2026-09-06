import 'package:ui_flutter_lab_exam/data/project.dart';

class Person {
  String name;
  String course;
  String profilePhoto;
  String introduction;
  List<String> skills;
  List<Project> projects;

  Person({
    required this.name,
    required this.course,
    required this.profilePhoto,
    required this.introduction,
    required this.skills,
    required this.projects,
  });
}

Person Ainesh = Person(
  name: 'Ainesh Godse',
  course: 'B.Tech 3rd Year • Computer Science Engineering',
  profilePhoto: 'assets/proffesional_profile.jpeg',
  introduction:'Hi, I am Ainesh Godse from 3rd Year CSE. I love projects that interact with the physical world and like solving problems.',
  skills: ['Python', 'C++', 'Java', 'Flutter'],
  projects: [C_R_Rao, ISRO_hackathon],
);