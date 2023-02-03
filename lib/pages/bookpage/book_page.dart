import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7D5C1),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        color: Color(0xffC0012A),
                        size: 35,
                      ),
                      Text(
                        'back',
                        style: TextStyle(
                            color: Color(0xffC0012A),
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
                          color: Color(0xffC0012A),
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
                          color: Color(0xffC0012A),
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
