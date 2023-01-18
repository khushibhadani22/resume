import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'global.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  GlobalKey<FormState> contactKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addController = TextEditingController();
  TextEditingController add2Controller = TextEditingController();
  TextEditingController add3Controller = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  File? photo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop('OptionPage');
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
                          Container(
                            width: 50,
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Global.contact = true;
                              });
                            },
                            child: Text(
                              "Contact",
                              style: Global.subTitle,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Global.contact = false;
                              });
                            },
                            child: Text(
                              "Photo",
                              style: Global.subTitle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: (Global.contact == true)
                    ? Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            height: 450,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Form(
                                key: contactKey,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: Image.asset(
                                                  "assets/images/personal1.jpg")),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter Your Name First....";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactName =
                                                    nameController.text;
                                              });
                                            },
                                            controller: nameController,
                                            decoration: InputDecoration(
                                                hintText: 'Name',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 100,
                                          width: 90,
                                          child: Image.asset(
                                            'assets/images/email111-removebg-preview.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your email first......";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactEmail =
                                                    emailController.text;
                                              });
                                            },
                                            controller: emailController,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                                hintText: 'Email',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: Image.asset(
                                                  "assets/images/phone.jpg")),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your phone number first......";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactPhone =
                                                    phoneController.text;
                                              });
                                            },
                                            controller: phoneController,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: 'Phone',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: Image.asset(
                                                  "assets/images/location1-removebg-preview.png")),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your address first......";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactAdd =
                                                    addController.text;
                                              });
                                            },
                                            controller: addController,
                                            decoration: InputDecoration(
                                                hintText:
                                                    'Address (Street, Building No)',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Container(
                                            height: 60,
                                            width: 60,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your address 2 first......";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactAdd2 =
                                                    add2Controller.text;
                                              });
                                            },
                                            controller: add2Controller,
                                            decoration: InputDecoration(
                                                hintText: 'Address',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 90,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 70,
                                          width: 250,
                                          child: TextFormField(
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "Enter your address 3 first......";
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              setState(() {
                                                Global.contactAdd3 =
                                                    add3Controller.text;
                                              });
                                            },
                                            controller: add3Controller,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                hintText: 'Pin code No',
                                                hintStyle: Global.backText),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
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
                                      if (contactKey.currentState!.validate()) {
                                        contactKey.currentState!.save();
                                        setState(() {
                                          Global.contact = false;
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
                                      contactKey.currentState!.reset();

                                      nameController.clear();
                                      emailController.clear();
                                      phoneController.clear();
                                      addController.clear();
                                      add2Controller.clear();
                                      add3Controller.clear();
                                      setState(() {
                                        Global.contactName = '';
                                        Global.contactEmail = '';
                                        Global.contactPhone = '';
                                        Global.contactAdd = '';
                                        Global.contactAdd2 = '';
                                        Global.contactAdd3 = '';
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
                      )
                    : Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 20)),
                          Container(
                            height: 250,
                            width: 350,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 70,
                                  backgroundColor: Colors.grey.shade300,
                                  backgroundImage: (photo == null)
                                      ? null
                                      : (FileImage(photo!)),
                                ),
                                FloatingActionButton(
                                  onPressed: () async {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            content: const Text("Pick Image"),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () async {
                                                    image =
                                                        await _picker.pickImage(
                                                            source: ImageSource
                                                                .camera);
                                                    setState(() {
                                                      photo = File(image!.path);
                                                    });
                                                    Global.pic = photo;
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Icon(
                                                    Icons.camera_alt_outlined,
                                                    size: 30,
                                                  )),
                                              ElevatedButton(
                                                  onPressed: () async {
                                                    image =
                                                        await _picker.pickImage(
                                                            source: ImageSource
                                                                .gallery);
                                                    setState(() {
                                                      photo = File(image!.path);
                                                    });
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Icon(
                                                    Icons.photo,
                                                    size: 30,
                                                  )),
                                              // Navigator.of(context).pop(),
                                            ],
                                          );
                                        });
                                  },
                                  mini: true,
                                  backgroundColor: Colors.blue.shade700,
                                  child: const Icon(
                                    Icons.add,
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 120),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 25)),
                                      onPressed: () {
                                        setState(
                                          () {
                                            Global.pic = photo;
                                            Navigator.of(context).pop();
                                          },
                                        );
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
                                        setState(() {
                                          photo = null;
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
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
