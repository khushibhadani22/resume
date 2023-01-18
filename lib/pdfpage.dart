import 'dart:io';

import 'package:flutter/material.dart';
 import 'package:path_provider/path_provider.dart';
 import 'package:pdf/pdf.dart';
 import 'package:pdf/widgets.dart' as pw;

import 'global.dart';

class PDF extends StatefulWidget {
  const PDF({Key? key}) : super(key: key);

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  final pdf = pw.Document();
  @override
  void initState() {
    final image = pw.MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    super.initState();
    pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Container(
                height: 150,
                width: 450,
                child: pw.Column(
                  children: [
                    pw.Row(
                      children: [
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 10, right: 10),
                          child: pw.Container(
                            height: 120,
                            width: 120,
                            child: pw.Image(image, fit: pw.BoxFit.cover),
                            decoration: const pw.BoxDecoration(),
                          ),
                        ),
                        pw.Padding(
                          padding: const pw.EdgeInsets.only(right: 5),
                          child: pw.SizedBox(
                            height: 120,
                            width: 260,
                            child: pw.Column(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceAround,
                              children: [
                                pw.Row(
                                  children: [
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactName,
                                          style:
                                              const pw.TextStyle(fontSize: 13)),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactEmail,
                                          style:
                                              const pw.TextStyle(fontSize: 12)),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactPhone,
                                          style:
                                              const pw.TextStyle(fontSize: 13)),
                                    ),
                                  ],
                                ),
                                pw.Row(
                                  children: [
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactAdd,
                                          style:
                                              const pw.TextStyle(fontSize: 12)),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactAdd2,
                                          style:
                                              const pw.TextStyle(fontSize: 13)),
                                    ),
                                    pw.Padding(
                                      padding:
                                          const pw.EdgeInsets.only(left: 5),
                                      child: pw.Text(Global.contactAdd3,
                                          style:
                                              const pw.TextStyle(fontSize: 13)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 5, right: 230),
                child: pw.Text(
                  "   Carrier Objective ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Description :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.carrierObj,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 10),
                    child: pw.Text(
                      "Current Designation :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.currentDesignation,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 1, right: 230),
                child: pw.Text(
                  "   Personal details ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "DOB :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.dob,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 5),
                  child: pw.Text(
                    "Marital Status :",
                    style: pw.TextStyle(
                        fontSize: 10, fontWeight: pw.FontWeight.bold),
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 7, left: 8),
                  child: pw.Text(
                    Global.maritalStatus,
                    style: const pw.TextStyle(fontSize: 10),
                  ),
                )
              ]),
              pw.Row(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 5),
                  child: pw.Text(
                    "Language Know :",
                    style: pw.TextStyle(
                        fontSize: 10, fontWeight: pw.FontWeight.bold),
                  ),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 7, left: 5),
                  child: pw.Text(
                    "",
                    style: const pw.TextStyle(fontSize: 10),
                  ),
                )
              ]),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Nationality :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.nationality,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: 280),
                child: pw.Text(
                  "    Experience ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 2),
                    child: pw.Text(
                      "Company Name :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.companyName,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Institute :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.school1,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Roles :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.roles,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 10, right: 400),
                child: pw.Text(
                  "Employed Status ",
                  style: pw.TextStyle(
                      fontSize: 10, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5, left: 10),
                    child: pw.Text(
                      "Join date :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.dateJo,
                      style: const pw.TextStyle(fontSize: 9),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5, left: 10),
                    child: pw.Text(
                      "Exit date :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.dateEx,
                      style: const pw.TextStyle(fontSize: 9),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 5, right: 300),
                child: pw.Text(
                  "    Project  ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Project title :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.project,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Roles :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.roles1,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Technologies :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.techno,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Project :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.prDescription,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 5, right: 300),
                child: pw.Text(
                  "    Education  ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Course :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.course,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "School :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.school,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "College :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.college,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Year Of Pass :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.pass,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: 280),
                child: pw.Text(
                  "    References ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 2),
                    child: pw.Text(
                      "References name :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.rn,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Designation :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.dg,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Organization :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: const pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.oi,
                      style: const pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: pw.EdgeInsets.only(right: 280),
                child: pw.Text(
                  "    Declaration ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 2),
                    child: pw.Text(
                      "Description :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.de,
                      style: pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Date :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.date,
                      style: pw.TextStyle(fontSize: 10),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 6, left: 10),
                    child: pw.Text(
                      "City :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.city,
                      style: pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Padding(
                padding: pw.EdgeInsets.only(right: 280),
                child: pw.Text(
                  "    Project ",
                  style: pw.TextStyle(
                      fontSize: 15, fontWeight: pw.FontWeight.bold),
                ),
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 2),
                    child: pw.Text(
                      "Project Title :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.project,
                      style: pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              pw.Row(
                children: [
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 5),
                    child: pw.Text(
                      "Technologies :",
                      style: pw.TextStyle(
                          fontSize: 10, fontWeight: pw.FontWeight.bold),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(top: 7, left: 5),
                    child: pw.Text(
                      Global.techno,
                      style: pw.TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    final image = MemoryImage(
      File(Global.pic!.path).readAsBytesSync(),
    );
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 450,
            color: const Color(0xff235566),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 10, left: 8),
                      child: Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Image(
                              image: image,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SizedBox(
                        height: 120,
                        width: 260,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(Global.contactName,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(Global.contactEmail,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.call,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(Global.contactPhone,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 13)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(Global.contactAdd,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                ),
                                Text(Global.contactAdd2,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10)),
                                Text(Global.contactAdd3,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 230),
            child: Text(
              "   Carrer Objective ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Descripation :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.carrierObj,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Current Designation :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.currentDesignation,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 1, right: 230),
            child: Text(
              "   Personal details ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "DOB :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.dob,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 26),
                child: Text(
                  "Marital Status :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.maritalStatus,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Nationality :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 8),
                child: Text(
                  Global.nationality,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 18),
                child: Text(
                  "Language Know :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  "",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "    Experience ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Company Name :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.companyName,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Institute :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.school1,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Roles :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.roles,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 310),
            child: Text(
              "Employed Status ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  "Join date :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.dateJo,
                  style: const TextStyle(color: Colors.black, fontSize: 9),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 10),
                child: Text(
                  "Exit date :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.dateEx,
                  style: const TextStyle(color: Colors.black, fontSize: 9),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 300),
            child: Text(
              "    Project  ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Project title :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.project,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Roles :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.roles1,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Technologies :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.techno,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Project :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.prDescription,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, right: 300),
            child: Text(
              "    Education  ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Course :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.course,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "School :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.school,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "College :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.college,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Year Of Pass :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.pass,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "    References ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "References name :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.rn,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Designation :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.dg,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Organization :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.oi,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "    Declaration ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Description :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.de,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Date :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.date,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 6, left: 10),
                child: Text(
                  "City :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.city,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "    Project ",
              style: TextStyle(
                  color: Color(0xff235566),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Text(
                  "Project Title :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.project,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Technologies :",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7, left: 5),
                child: Text(
                  Global.techno,
                  style: const TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff235566),
        onPressed: () async {
          Directory? tempDir = await getExternalStorageDirectory();

          File locate = File('${tempDir!.path}/resume.pdf');

          await locate.writeAsBytes(await pdf.save());
        },
        child: const Icon(
          Icons.download,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
