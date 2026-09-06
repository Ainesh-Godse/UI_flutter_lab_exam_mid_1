class Project {
  String name;
  String description;
  String? gitlink;

  Project({
    required this.name,
    required this.description,
    this.gitlink,
  });
}

Project C_R_Rao = Project(
    name: 'C R Rao Archive',
    description: 'An Archive website hosting all study material provided to the students of C R Rao AIMSCS.',
    gitlink: 'https://github.com/Ainesh-Godse/UI_flutter_lab_exam_mid_1',
);

Project ISRO_hackathon = Project(
  name: 'Search for Ice on the Lunar Poles',
  description: 'A ISRO Hackathon project aimed at creating algorithms and ML models to search Ice on the moon through orbiter data.',
);