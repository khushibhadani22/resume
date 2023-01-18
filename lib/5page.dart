import 'package:flutter/material.dart';

import 'global.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  dynamic radioVal;
  bool checkBoxValG = false;
  bool checkBoxValE = false;
  bool checkBoxValH = false;

  GlobalKey<FormState> pdKey = GlobalKey<FormState>();

  TextEditingController dobController = TextEditingController();
  TextEditingController nController = TextEditingController();

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
                            "  Personal Details",
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
                key: pdKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(20)),
                    Container(
                      height: 450,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 450,
                              width: 350,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                physics: const BouncingScrollPhysics(),
                                child: Column(
                                  children: [
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Align(
                                      alignment: const Alignment(-1, 0),
                                      child: Text(
                                        "Date Of Birth",
                                        style: Global.carrText,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Center(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your DOB......";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.dob = dobController.text;
                                          });
                                        },
                                        controller: dobController,
                                        keyboardType: TextInputType.datetime,
                                        decoration: InputDecoration(
                                            border: const OutlineInputBorder(),
                                            hintText: "     DD/MM/YYYY ",
                                            hintStyle: Global.backText),
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Align(
                                      alignment: const Alignment(-1, 0),
                                      child: Text(
                                        "Marital Status",
                                        style: Global.carrText,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    RadioListTile(
                                        title: Text(
                                          "Single",
                                          style: Global.backText,
                                        ),
                                        value: 'Single',
                                        groupValue: radioVal,
                                        onChanged: (val) {
                                          setState(() {
                                            radioVal = val;
                                            Global.maritalStatus = 'Single';
                                          });
                                        }),
                                    RadioListTile(
                                        title: Text(
                                          "Married",
                                          style: Global.backText,
                                        ),
                                        value: 'Married',
                                        groupValue: radioVal,
                                        onChanged: (val) {
                                          setState(() {
                                            radioVal = val;
                                            Global.maritalStatus = 'Married';
                                          });
                                        }),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Align(
                                      alignment: const Alignment(-1, 0),
                                      child: Text(
                                        " Languages Known",
                                        style: Global.carrText,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    CheckboxListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        title: Text(
                                          "English",
                                          style: Global.backText,
                                        ),
                                        value: checkBoxValE,
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              checkBoxValE = val!;
                                              if (checkBoxValE == true) {
                                                Global.language.add('English');
                                              } else if (checkBoxValE ==
                                                  false) {
                                                Global.language
                                                    .remove('English');
                                              }
                                            },
                                          );
                                        }),
                                    CheckboxListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        title: Text(
                                          "Gujarati",
                                          style: Global.backText,
                                        ),
                                        value: checkBoxValG,
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              checkBoxValG = val!;
                                              if (checkBoxValG == true) {
                                                Global.language.add('Gujarati');
                                              } else if (checkBoxValG ==
                                                  false) {
                                                Global.language
                                                    .remove('Gujarati');
                                              }
                                            },
                                          );
                                        }),
                                    CheckboxListTile(
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        title: Text(
                                          "Hindi",
                                          style: Global.backText,
                                        ),
                                        value: checkBoxValH,
                                        onChanged: (val) {
                                          setState(
                                            () {
                                              checkBoxValH = val!;
                                              if (checkBoxValH == true) {
                                                Global.language.add('Hindi');
                                              } else if (checkBoxValH ==
                                                  false) {
                                                Global.language.remove('Hindi');
                                              }
                                            },
                                          );
                                        }),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Align(
                                      alignment: const Alignment(-1, 0),
                                      child: Text(
                                        "Nationality",
                                        style: Global.carrText,
                                      ),
                                    ),
                                    const Padding(
                                        padding: EdgeInsets.only(top: 10)),
                                    Center(
                                      child: TextFormField(
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return "Enter your nationality......";
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          setState(() {
                                            Global.nationality =
                                                nController.text;
                                          });
                                        },
                                        controller: nController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            hintText: "    Indian ",
                                            hintStyle: Global.backText),
                                      ),
                                    ),
                                  ],
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
                                if (pdKey.currentState!.validate()) {
                                  pdKey.currentState!.save();
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
                                pdKey.currentState!.reset();

                                dobController.clear();
                                nController.clear();

                                setState(() {
                                  Global.dob = '';
                                  Global.nationality = '';
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
