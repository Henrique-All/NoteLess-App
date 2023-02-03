import 'package:flutter/material.dart';
import 'package:noteless_app/pages/bookpage/book_page.dart';
import 'package:noteless_app/pages/notepage/notes_home.dart';

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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: (currentIndex == 1)
                          ? Colors.white
                          : const Color(0xffC0012A),
                      padding: const EdgeInsets.only(
                          top: 10, left: 0, right: 0, bottom: 10),
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
                      width: 28,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: (currentIndex == 1)
                            ? const Color(0xffC0012A)
                            : Colors.white,
                        padding: const EdgeInsets.only(
                            top: 10, left: 0, right: 0, bottom: 10)),
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
                      width: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
              SizedBox(
                height: 750,
                child: PageView(
                  controller: page,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: NotesPage(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: BookPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
