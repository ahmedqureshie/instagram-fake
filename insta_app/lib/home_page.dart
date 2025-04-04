import 'package:flutter/material.dart';
import 'package:insta_app/app_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppPage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.home,
                color:
                    currentPage == 0
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.search,
                color:
                    currentPage == 1
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.add_box,
                color:
                    currentPage == 2
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.video_library,
                color:
                    currentPage == 3
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person,
                color:
                // color addedd
                    currentPage == 4
                        ? Color.fromRGBO(203, 73, 101, 1)
                        : Color.fromRGBO(40, 40, 40, 1),
              ),
              onPressed: () {
                setState(() {
                  currentPage = 4;
                });
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
