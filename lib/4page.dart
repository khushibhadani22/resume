import 'package:flutter/material.dart';

import 'global.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  GlobalKey<FormState> carrierKey = GlobalKey<FormState>();

  TextEditingController objController = TextEditingController();
  TextEditingController currentController = TextEditingController();

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
                            "  Carrier Objective",
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
                  key: carrierKey,
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(20)),
                      Container(
                        height: 230,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
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
                                  " Career Objective",
                                  style: Global.carrText,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Your Description....";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.carrierObj = objController.text;
                                    });
                                  },
                                  controller: objController,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Description',
                                    hintStyle: Global.backText,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 15)),
                      Container(
                        height: 120,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Align(
                                alignment: const Alignment(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    " Current Designation",
                                    style: Global.carrText,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Your Description....";
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    setState(() {
                                      Global.currentDesignation =
                                          currentController.text;
                                    });
                                  },
                                  controller: currentController,
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    hintText: 'Software Engineer',
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
                                  if (carrierKey.currentState!.validate()) {
                                    carrierKey.currentState!.save();
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
                                  carrierKey.currentState!.reset();

                                  objController.clear();
                                  currentController.clear();

                                  setState(() {
                                    Global.carrierObj = '';
                                    Global.currentDesignation = '';
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
              )),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
