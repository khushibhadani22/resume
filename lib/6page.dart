import 'package:flutter/material.dart';

import 'global.dart';

class Eduction extends StatefulWidget {
  const Eduction({Key? key}) : super(key: key);

  @override
  State<Eduction> createState() => _EductionState();
}

class _EductionState extends State<Eduction> {
  GlobalKey<FormState> educationKey = GlobalKey<FormState>();

  TextEditingController courseController = TextEditingController();
  TextEditingController schoolController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
                            "  Eduction",
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
                key: educationKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    Container(
                      height: 410,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " Course/Degree",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your course......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.course = courseController.text;
                                  });
                                },
                                controller: courseController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "B.Tech Information Technology",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " School/College/Institute",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your school......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.school = schoolController.text;
                                  });
                                },
                                controller: schoolController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Bhagavan Mahavir University",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " School/College/Institute",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your college......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.college = collegeController.text;
                                  });
                                },
                                controller: collegeController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "70%(or)7.0 CGPA",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " Year Of Pass",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your passing year......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.pass = passController.text;
                                  });
                                },
                                keyboardType: TextInputType.number,
                                controller: passController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "2019",
                                  hintStyle: Global.backText,
                                ),
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
                                if (educationKey.currentState!.validate()) {
                                  educationKey.currentState!.save();
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
                                educationKey.currentState!.reset();

                                courseController.clear();
                                schoolController.clear();
                                collegeController.clear();
                                passController.clear();
                                setState(() {
                                  Global.contactName = '';
                                  Global.contactEmail = '';
                                  Global.contactPhone = '';
                                  Global.contactAdd = '';
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
