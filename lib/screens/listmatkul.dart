import 'package:flutter/material.dart';

class ListMatkulScreen extends StatelessWidget {
  const ListMatkulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> course = [
      {
        'name': 'Mobile Application',
        'description': 'Mobile Application is an application...',
      },
      {
        'name': 'Web Application',
        'description': 'A web application is a computer program...',
      },
      {
        'name': 'Desktop Application',
        'description': 'A desktop application is a software program...',
      },
      {
        'name': 'Game Development',
        'description':
            'Game development is the process of creating video games...',
      },
      {
        'name': 'Machine Learning',
        'description':
            'Machine learning is the study of computer algorithms...',
      },
      {
        'name': 'Artificial Intelligence',
        'description': 'Artificial intelligence (AI)',
      },
      {
        'name': 'Internet of Things',
        'description': 'The Internet of things (IoT)',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.orange,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.deepOrange,
                  Colors.orange,
                ]),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
          ),
          itemCount: course.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.orange,
                  width: 2,
                ),
                // color: Colors.orange,
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      course[index]['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(course[index]['description']!),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(360),
                              // border: Border.all(
                              //   color: Colors.orange,
                              //   width: 2,
                              // ),
                              color: Colors.deepPurple,
                              // color: Colors.orange,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
