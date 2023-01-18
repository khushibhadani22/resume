import 'package:flutter/material.dart';

import 'global.dart';

class OptionPage extends StatefulWidget {
  const OptionPage({Key? key}) : super(key: key);

  @override
  State<OptionPage> createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                color: Colors.blue.shade700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop('/');
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: Colors.white,
                            )),
                        Text(
                          "  Resume Workspace",
                          style: Global.title,
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('pdf');
                            },
                            icon: const Icon(
                              Icons.picture_as_pdf,
                              color: Colors.white,
                              size: 30,
                            ))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Build Options",
                          style: Global.subTitle,
                        ),
                      ],
                    ),
                  ],
                ))),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myBox('assets/images/contactinfoicon.jpg', 'Contact info',
                    'Contact'),
                myBox('assets/images/bag.jpg', 'Carrier Objective', 'Carrier'),
                myBox('assets/images/personal1.jpg', 'Personal Details',
                    'Personal'),
                myBox('assets/images/education.jpg', 'Education', 'Study'),
                myBox('assets/images/expiraynce.jpg', 'Experiences', 'Ex'),
                myBox('assets/images/technical.jpg', 'Technical Skills',
                    'Technical'),
                myBox('assets/images/openbook.jpg', 'Interest/Hobbies',
                    'Hobbies'),
                myBox('assets/images/project.jpg', 'Projects', 'Pr'),
                myBox('assets/images/achivment.jpg', 'Achievements', 'Archive'),
                myBox('assets/images/handshake.jpg', 'References', 'Refer'),
                myBox(
                    'assets/images/declaration.jpg', 'Declaration', 'Declare'),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Container myBox(String image, String title, String pageKey) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              image,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: Align(
              alignment: const Alignment(-1, 0),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          const Spacer(
            flex: 15,
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(pageKey);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
