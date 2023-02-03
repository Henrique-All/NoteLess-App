import 'package:flutter/material.dart';
import 'package:noteless_app/pages/bookpage/diary_home.dart';
import 'package:noteless_app/pages/notepage/notes_home.dart';

import '../routes/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageInitial = 0;
  late PageController page;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    page = PageController(initialPage: pageInitial);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 38,
                      height: 38,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: (currentIndex == 1)
                              ? Colors.white
                              : const Color(0xffC0012A),
                          padding: const EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          setState(() {
                            currentIndex = 0;
                            page.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          });
                        },
                        child: Image.asset(
                          'assets/img/note_icon.png',
                          width: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 38,
                      height: 38,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: (currentIndex == 1)
                                ? const Color(0xffC0012A)
                                : Colors.white,
                            padding: const EdgeInsets.all(0)),
                        onPressed: () {
                          setState(() {
                            currentIndex = 1;
                            page.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          });
                        },
                        child: Image.asset(
                          'assets/img/book_icon.png',
                          width: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: SizedBox(
                        width: 38,
                        height: 38,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.transparent,
                              padding: const EdgeInsets.all(0)),
                          onPressed: () {},
                          child: const Icon(
                            Icons.settings,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  controller: page,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: NotesPage(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: DiaryHome(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: const Color(0xffC0012A),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 150,
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(RoutesManager.notepage);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.orange,
                            ),
                            Text(
                              'Create new Note',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: Colors.transparent),
                        onPressed: () {
                          Navigator.of(
                            context,
                          ).pushNamed(RoutesManager.diarypage);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.add,
                              color: Colors.orange,
                            ),
                            Text('Create new Book',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 20,
                                )),
                          ],
                        ),
                      ),
                    ],
                  )),
                );
              });
        },
        backgroundColor: const Color(0xffC0012A),
        child: const Icon(
          Icons.add,
          color: Colors.orange,
          size: 34,
        ),
      ),
    );
  }
}
