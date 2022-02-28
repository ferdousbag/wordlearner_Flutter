import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'functions.dart';

void main() {
  runApp(const MApp());
}

class MApp extends StatelessWidget {
  const MApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Word Learner',
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    newwordgenerator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Learner'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Expanded(
              child: SelectableText(
                newwordgenerator().toString(),
                maxLines: 1,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      newwordgenerator();
                    });
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .33,
                    child: Column(
                      children: [
                        const Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                          size: 30,
                        ),
                        const Text('I know it!')
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width * .33,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: OutlinedButton(
              //       onPressed: () {
              //         setState(() {
              //           newwordgenerator();

              //         });
              //       },
              //       child: Column(
              //         children: [
              //           const Icon(
              //             CupertinoIcons.heart_slash_fill,
              //             color: Colors.red,
              //             size: 30,
              //           ),
              //           const Text('I don\'t know')
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
