import 'package:flutter/material.dart';

class DiaryHome extends StatefulWidget {
  const DiaryHome({super.key});

  @override
  State<DiaryHome> createState() => _DiaryHomeState();
}

class _DiaryHomeState extends State<DiaryHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text(
              'Diary',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: const Color(0xffC0012A),
            child: TextFormField(
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.orange,
                    size: 34,
                  ),
                  contentPadding: EdgeInsets.all(15)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffC0012A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fixedSize: const Size(46, 30),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'All',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  )),
              const SizedBox(
                width: 12,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: const Color(0xffC0012A),
                  fixedSize: const Size(46, 30),
                ),
                onPressed: () {},
                child: const Icon(
                  Icons.folder,
                  color: Colors.orange,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
