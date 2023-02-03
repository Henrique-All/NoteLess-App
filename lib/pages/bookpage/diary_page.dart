import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class DiaryPage extends StatefulWidget {
  const DiaryPage({super.key});

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7D5C1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                const SizedBox(
                  width: 200,
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff363432),
                        fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      hintText: 'Title',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: const TextField(
                    style: TextStyle(
                        color: Color(0xff363432), fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      hintText: 'Talk to me',
                      border: InputBorder.none,
                    ),
                    maxLength: 600,
                    maxLines: null,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
