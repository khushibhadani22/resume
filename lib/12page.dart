import 'package:flutter/material.dart';

import 'global.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  GlobalKey<FormState> referencesKey = GlobalKey<FormState>();

  TextEditingController rfnController = TextEditingController();
  TextEditingController dgiController = TextEditingController();
  TextEditingController ognController = TextEditingController();
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
                            "  References",
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
                key: referencesKey,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                        height: 400,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              const Padding(padding: EdgeInsets.all(10)),
                              Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Reference Name",
                                  style: Global.carrText,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your reference name......";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.rn = rfnController.text;
                                    });
                                  },
                                  controller: rfnController,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Suresh Shah",
                                    hintStyle: Global.backText,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Designation",
                                  style: Global.carrText,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your designation......";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.dg = dgiController.text;
                                    });
                                  },
                                  controller: dgiController,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Marketing Manager, ID-342332",
                                    hintStyle: Global.backText,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const Alignment(-1, 0),
                                child: Text(
                                  " Organization/Institute",
                                  style: Global.carrText,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter your organization......";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.oi = ognController.text;
                                    });
                                  },
                                  controller: ognController,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: "Green Energy Pvt.Ltd",
                                    hintStyle: Global.backText,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
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
                                if (referencesKey.currentState!.validate()) {
                                  referencesKey.currentState!.save();
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
                                referencesKey.currentState!.reset();

                                rfnController.clear();
                                dgiController.clear();
                                ognController.clear();

                                setState(() {
                                  Global.rn = '';
                                  Global.dg = '';
                                  Global.oi = '';
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
