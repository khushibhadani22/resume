import 'package:flutter/material.dart';

import 'global.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  dynamic radioVal;
  bool demo = true;

  GlobalKey<FormState> exKey = GlobalKey<FormState>();

  TextEditingController companyController = TextEditingController();
  TextEditingController school1Controller = TextEditingController();
  TextEditingController rolesController = TextEditingController();
  TextEditingController joinedController = TextEditingController();
  TextEditingController exitController = TextEditingController();
  TextEditingController joined1Controller = TextEditingController();
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
                            "  Experiences",
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
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: exKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    Container(
                      height: 470,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " Company Name",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your company name......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.companyName = companyController.text;
                                  });
                                },
                                controller: companyController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "New Enterprise, San Francisco",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " School/college/institute",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your school name......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.school1 = school1Controller.text;
                                  });
                                },
                                controller: school1Controller,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "quality Test Engineer",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " Roles(Optional)",
                                style: Global.carrText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: TextFormField(
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Enter your roles ......";
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  setState(() {
                                    Global.roles = rolesController.text;
                                  });
                                },
                                controller: rolesController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText:
                                      "Working with team members to\ncome up with new concepts and\nproduct analysis... ",
                                  hintStyle: Global.backText,
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(10)),
                            Align(
                              alignment: const Alignment(-1, 0),
                              child: Text(
                                " Employed Status",
                                style: Global.backText,
                              ),
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Row(
                              children: [
                                SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: RadioListTile(
                                      title: Text(
                                        "Previously Employed",
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 10),
                                      ),
                                      value: 'previous',
                                      groupValue: radioVal,
                                      onChanged: (val) {
                                        setState(() {
                                          radioVal = val;
                                          demo = true;
                                          Global.prEmployed =
                                              'previously Employed';
                                        });
                                      },
                                    )),
                                SizedBox(
                                    height: 50,
                                    width: 170,
                                    child: RadioListTile(
                                      title: Text(
                                        "Currently Employed",
                                        style: TextStyle(
                                            color: Colors.blue.shade700,
                                            fontSize: 10),
                                      ),
                                      value: 'current',
                                      groupValue: radioVal,
                                      onChanged: (val) {
                                        setState(() {
                                          radioVal = val;
                                          demo = false;
                                          Global.cuEmployed =
                                              'Currently Employed';
                                        });
                                      },
                                    )),
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            Container(
                              height: 1,
                              width: 325,
                              color: Colors.grey.shade400,
                            ),
                            const Padding(padding: EdgeInsets.only(top: 10)),
                            (demo == true)
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Date Joined",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: SizedBox(
                                              height: 50,
                                              width: 150,
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your date joined......";
                                                  }
                                                  return null;
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.dateJo =
                                                        joinedController.text;
                                                  });
                                                },
                                                controller: joinedController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: 'DD/MM/YYYY',
                                                        hintStyle: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Date Exit",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5),
                                            child: SizedBox(
                                              height: 50,
                                              width: 150,
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your exit date......";
                                                  }
                                                  return null;
                                                },
                                                keyboardType:
                                                    TextInputType.number,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.dateEx =
                                                        exitController.text;
                                                  });
                                                },
                                                controller: exitController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: 'DD/MM/YYYY',
                                                        hintStyle: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      Align(
                                        alignment: Alignment(-0.9, 0),
                                        child: Text(
                                          "Date Joined",
                                          style: TextStyle(
                                              color: Colors.grey.shade600,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Align(
                                          alignment: const Alignment(-0.9, 0),
                                          child: SizedBox(
                                            height: 50,
                                            width: 150,
                                            child: TextFormField(
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your date joined......";
                                                }
                                                return null;
                                              },
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.dateJo1 =
                                                      joined1Controller.text;
                                                });
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              controller: joined1Controller,
                                              decoration: const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  hintText: 'DD/MM/YYYY',
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                                if (exKey.currentState!.validate()) {
                                  exKey.currentState!.save();
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
                                exKey.currentState!.reset();

                                companyController.clear();
                                school1Controller.clear();
                                rolesController.clear();
                                joinedController.clear();
                                exitController.clear();
                                joined1Controller.clear();

                                setState(() {
                                  Global.companyName = '';
                                  Global.school1 = '';
                                  Global.roles = '';
                                  Global.dateJo = '';
                                  Global.dateEx = '';
                                  Global.dateJo1 = '';
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
