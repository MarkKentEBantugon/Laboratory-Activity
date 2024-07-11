import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile App'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person), text: 'Personal Info'),
              Tab(icon: Icon(Icons.school), text: 'Education'),
              Tab(icon: Icon(Icons.build), text: 'Skills'),
              Tab(icon: Icon(Icons.interests), text: 'Interests'),
              Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalInfoTab(),
            EducationTab(),
            SkillsTab(),
            InterestsTab(),
            ContactTab(),
          ],
        ),
      ),
    );
  }
}

class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage:
                AssetImage('assets/profile.png'), // Replace with your image URL
          ),
          SizedBox(height: 20),
          Text(
            'Mark Kent E. Bantugon',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Age: 20',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Bio: Passionate developer with a love for Flutter.',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          title: Text('Bachelor of Science in Information Technology'),
          subtitle: Text('Batangas State University -TNEU 2018-2022'),
        ),
        ListTile(
          title: Text('Senior High School Diploma'),
          subtitle: Text(
              'Anselmo A. Sandoval Memorial National High School, 2016-2018'),
        ),
        ListTile(
          title: Text('Junior High School Diploma'),
          subtitle: Text(
              'Anselmo A. Sandoval Memorial National High School, 2016-2018'),
        ),
        ListTile(
          title: Text('Elementary'),
          subtitle: Text('Laurel Elementary School, 2016-2018'),
        ),
      ],
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          title: Text('Technical Skills'),
          subtitle: Text('Flutter, Dart, Python, JavaScript'),
        ),
        ListTile(
          title: Text('Non-Technical Skills'),
          subtitle: Text('Project Management, Team Leadership'),
        ),
        ListTile(
          title: Text('Certifications'),
          subtitle: Text(
              'Certified Flutter Developer, Project Management Professional (PMP)'),
        ),
      ],
    );
  }
}

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          title: Text('Specializations'),
          subtitle: Text('Mobile App Development, UI/UX Design'),
        ),
        ListTile(
          title: Text('Research Areas'),
          subtitle: Text('Human-Computer Interaction, Machine Learning'),
        ),
        ListTile(
          title: Text('Notable Projects'),
          subtitle:
              Text('Project A: Mobile App for XYZ\nProject B: Research on HCI'),
        ),
        ListTile(
          title: Text('Publications'),
          subtitle: Text(
              'Paper A: HCI in Mobile Apps\nPaper B: Advances in Machine Learning'),
        ),
      ],
    );
  }
}

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email'),
          subtitle: Text('21-05936@g.batstate-u.edu.ph'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('+1234567890'),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text('Website'),
          subtitle: Text('https://www.kentbantugon.com'),
        ),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('LinkedIn'),
          subtitle: Text('https://www.linkedin.com/in/kentbantugon'),
        ),
      ],
    );
  }
}