import 'package:flutter/material.dart';

import 'global.dart';

class Achievements extends StatefulWidget {
  const Achievements({Key? key}) : super(key: key);

  @override
  State<Achievements> createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  GlobalKey<FormState> ac = GlobalKey<FormState>();

  late List ach = [];
  TextEditingController technicalSkills = TextEditingController();

  List<TextEditingController> allFiled = [
    TextEditingController(),
    TextEditingController(),
  ];
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
                            "  Achievements",
                            style: Global.title,
                          ),
                          Container(
                            width: 50,
                          ),
                        ],
                      ),
                    ],
                  ))),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Enter Achievements",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        ...allFiled.map((e) => row(controller: e)).toList(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              allFiled.add(
                                TextEditingController(),
                              );
                            });
                          },
                          child: Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.grey.shade400)),
                            child: const Center(
                              child: Text(
                                "+",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 40),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 25)),
                            onPressed: () {
                              Global.achievement =
                                  allFiled.map((e) => (e.text)).toList();
                              //  print(Global.skill);
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "SAVE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 25)),
                            onPressed: () {
                              allFiled.clear();
                              setState(() {
                                Global.achievement = [];
                              });
                            },
                            child: Text(
                              "CLEAR",
                              style: TextStyle(
                                color: Colors.blue.shade700,
                                fontSize: 20,
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }

  Row row({required TextEditingController controller}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 50,
          width: 280,
          child: TextFormField(
            decoration: InputDecoration(
              hintText: ' Exceeded sales 17% average',
              hintStyle: Global.backText,
            ),
          ),
        ),
        SizedBox(
            height: 50,
            width: 40,
            child: InkWell(
                onTap: () {
                  setState(() {
                    allFiled.removeAt(allFiled.indexOf(controller));
                  });
                },
                child: Image.asset('assets/images/dustbin.jpg')))
      ],
    );
  }
}
