class ProjectInfo {
  final String name;
  final String iconImage;
  final String description;
  final String tech;
  final String link;

  ProjectInfo(
      this.name, this.iconImage, this.description, this.tech, this.link);
}

List<ProjectInfo> projects = [
  ProjectInfo(
    "Covid Data Visualization",
    "assets/images/covid.png",
    "- Data Structure and Algorithm Project\nData Visualation of the Covid Data. Graphs, Charts and other form of data visualization were shown fetching the data from API and using the concepts of A search tree of data structure.",
    "C++, DSA, QT for UI",
    "https://github.com/basnetmausam/Covid19-Data-Visualization",
  ),
  ProjectInfo(
    "Ranipokhari 3D",
    "assets/images/ranipokhari.png",
    "- Computer Graphics Project\nA 3D object of a new Ranipokhari was made in blender and OpenGl rendering of blender objects with manual shadings and lightings was done.",
    "C++, Blender",
    "https://github.com/basnetmausam/Ranipokhari",
  ),
  ProjectInfo(
    "Recommendation Letter Generator",
    "assets/images/letter.png",
    "- Software Engineering and DBMS Project\nWeb Application which is used to request and get Recommendation Letter from our Professors of Pulchowk Campus. The algorithm can automatically generate letters and can be edited on purpose.",
    "Django, HTML, CSS, SQL for DB",
    "https://github.com/basnetmausam/letter",
  ),
  ProjectInfo(
    "IOE App",
    "assets/images/ioe.png",
    "- Minor Project\nA mobile application built IOE colleges. Notices, news, events regarding IOE and results of different programs are  made available on a single mobile application unlike visiting different portals of IOE.",
    "Flutter, Firebase, Django, SQL",
    "https://github.com/basnetmausam/ioe_app",
  ),
  ProjectInfo(
    "Aawaj",
    "assets/images/aawaj.png",
    "-Major Project (Ongoing)\n A nepali text to speech application for the voice of voiceless. Through this application any kind of physically disabled person can use the UI provided to generare the sentences and then into the voice",
    "Flutter, Python, tensorflow 2.0",
    "https://github.com/basnetmausam/",
  ),
];
