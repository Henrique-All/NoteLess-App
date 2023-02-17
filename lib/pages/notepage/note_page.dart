import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363432),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.of(
                        context,
                      ).pushNamed(RoutesManager.homepage);
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.orange,
                          size: 35,
                        ),
                        Text(
                          'back',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 34,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.share,
                            color: Colors.orange,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 34,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            elevation: 0,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.orange,
                            size: 24,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                maxLength: 50,
                maxLines: null,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.orange,
                    fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Title',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: SingleChildScrollView(
                    child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff6B6B6B),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0))),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      hintText: 'Start typing...',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 48, 47, 47),
                      ),
                    ),
                    maxLines: null,
                  ),
                ),
              ),
            )))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.orange,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.check_box),
                            Text(
                              'Task List',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.format_list_bulleted),
                            Text(
                              'Outline list',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.title),
                            Text(
                              'SubTitle',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
