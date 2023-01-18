import 'package:flutter/material.dart';

import 'global.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue.shade700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Resume Builder",
                        style: Global.title,
                      ),
                      Text(
                        "RESUMES",
                        style: Global.subTitle,
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 5,
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Image.asset("assets/images/box.jpg"),
                      Text(
                        "No Resumes + Create new resume.",
                        style: Global.backText,
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('option');
        },
        backgroundColor: Colors.blue.shade700,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
