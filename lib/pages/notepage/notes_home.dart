import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363432),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Notes',
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
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: Row(
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
                        fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}
