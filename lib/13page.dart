import 'package:flutter/material.dart';

import 'global.dart';

class Declaration extends StatefulWidget {
  const Declaration({Key? key}) : super(key: key);

  @override
  State<Declaration> createState() => _DeclarationState();
}

class _DeclarationState extends State<Declaration> {
  bool switchVal = false;
  bool switchCall = false;

  GlobalKey<FormState> declarationKey = GlobalKey<FormState>();

  TextEditingController decController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController egController = TextEditingController();
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
                            "  Declaration",
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
                child: (switchVal == false)
                    ? Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            height: 70,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "  Declaration",
                                  style: Global.carrText,
                                ),
                                Switch(
                                    value: switchVal,
                                    onChanged: (val) {
                                      setState(() {
                                        switchVal = val;
                                      });
                                    })
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            height: 400,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Form(
                              key: declarationKey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "  Declaration",
                                        style: Global.carrText,
                                      ),
                                      Switch(
                                          value: switchVal,
                                          onChanged: (val) {
                                            setState(() {
                                              // Navigator.of(context).pop();
                                              switchVal = val;
                                            });
                                          })
                                    ],
                                  ),
                                  Align(
                                    alignment: const Alignment(-0.8, 0),
                                    child: SizedBox(
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                            'assets/images/target.jpg')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: TextFormField(
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Enter your description......";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.de = decController.text;
                                        });
                                      },
                                      controller: decController,
                                      decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Description',
                                          hintStyle: Global.backText),
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    width: 300,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 25),
                                            child: SizedBox(
                                              height: 50,
                                              width: 130,
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your date......";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.date =
                                                        dateController.text;
                                                  });
                                                },
                                                keyboardType:
                                                    TextInputType.datetime,
                                                controller: dateController,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            "  Place(Interview\n  venue/city)",
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
                                              width: 130,
                                              child: TextFormField(
                                                validator: (val) {
                                                  if (val!.isEmpty) {
                                                    return "Enter your place......";
                                                  }
                                                  return null;
                                                },
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.city =
                                                        egController.text;
                                                  });
                                                },
                                                controller: egController,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: 'Eg. Surat',
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
                                      if (declarationKey.currentState!
                                          .validate()) {
                                        declarationKey.currentState!.save();
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
                                      declarationKey.currentState!.reset();

                                      decController.clear();
                                      dateController.clear();
                                      egController.clear();

                                      setState(() {
                                        Global.de = '';
                                        Global.date = '';
                                        Global.city = '';
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
                      )),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
