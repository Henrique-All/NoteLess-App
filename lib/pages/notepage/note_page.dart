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
      backgroundColor: Colors.orange,
      body: SafeArea(
          child: Column(
        children: [
          Row(
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
                      )
                    ],
                  ))
            ],
          ),
        ],
      )),
    );
  }
}
