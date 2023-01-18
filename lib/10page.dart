import 'package:flutter/material.dart';

import 'global.dart';

class ProjectBu extends StatefulWidget {
  const ProjectBu({Key? key}) : super(key: key);

  @override
  State<ProjectBu> createState() => _ProjectBuState();
}

class _ProjectBuState extends State<ProjectBu> {
  bool checkBoxValC = false;
  bool checkBoxValCC = false;
  bool checkBoxValF = false;

  GlobalKey<FormState> prKey = GlobalKey<FormState>();

  TextEditingController projectController = TextEditingController();
  TextEditingController roles1Controller = TextEditingController();
  TextEditingController technologiesController = TextEditingController();
  TextEditingController project2Controller = TextEditingController();
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
                            "  Projects",
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
              child: Form(
                key: prKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      height: 450,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Project Title",
                                  style: Global.carrText,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Your project....";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.project = projectController.text;
                                  });
                                },
                                controller: projectController,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Resume Builder App',
                                    hintStyle: Global.backText),
                              ),
                            ),
                            Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Technologies",
                                  style: Global.carrText,
                                )),
                            CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(
                                  "C Programming",
                                  style: Global.backText,
                                ),
                                value: checkBoxValC,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      checkBoxValC = val!;
                                      if (checkBoxValC == true) {
                                        Global.language.add('C programming');
                                      } else if (checkBoxValC == false) {
                                        Global.tec.remove('C programming');
                                      }
                                    },
                                  );
                                }),
                            CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(
                                  "C++",
                                  style: Global.backText,
                                ),
                                value: checkBoxValCC,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      checkBoxValCC = val!;
                                      if (checkBoxValCC == true) {
                                        Global.language.add('C++');
                                      } else if (checkBoxValCC == false) {
                                        Global.tec.remove('C++');
                                      }
                                    },
                                  );
                                }),
                            CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(
                                  "Flutter",
                                  style: Global.backText,
                                ),
                                value: checkBoxValF,
                                onChanged: (val) {
                                  setState(
                                    () {
                                      checkBoxValF = val!;
                                      if (checkBoxValF == true) {
                                        Global.language.add('Flutter');
                                      } else if (checkBoxValF == false) {
                                        Global.tec.remove('Flutter');
                                      }
                                    },
                                  );
                                }),
                            Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Roles",
                                  style: Global.carrText,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Your Roles....";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.roles1 = roles1Controller.text;
                                  });
                                },
                                controller: roles1Controller,
                                maxLines: 2,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText:
                                        'Organize team members, Code analysis',
                                    hintStyle: Global.backText),
                              ),
                            ),
                            Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Technologies",
                                  style: Global.carrText,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Your technologies....";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.techno = technologiesController.text;
                                  });
                                },
                                controller: technologiesController,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: '5 - Programmers',
                                    hintStyle: Global.backText),
                              ),
                            ),
                            Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Project Description",
                                  style: Global.carrText,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter Your project description....";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.prDescription =
                                        project2Controller.text;
                                  });
                                },
                                controller: project2Controller,
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Enter Your Project Description',
                                    hintStyle: Global.backText),
                              ),
                            ),
                          ],
                        ),
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
                                if (prKey.currentState!.validate()) {
                                  prKey.currentState!.save();
                                  setState(() {
                                    Global.contact = false;
                                    Navigator.of(context).pop();
                                  });
                                }
                              },
                              child: const Text(
                                "SAVE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 25)),
                              onPressed: () {
                                prKey.currentState!.reset();

                                projectController.clear();
                                roles1Controller.clear();
                                technologiesController.clear();
                                project2Controller.clear();

                                setState(() {
                                  Global.project = '';
                                  Global.roles1 = '';
                                  Global.techno = '';
                                  Global.prDescription = '';
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
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
