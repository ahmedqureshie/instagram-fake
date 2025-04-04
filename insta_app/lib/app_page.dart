import 'package:flutter/material.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  List<String> profileImage = [
    "image/pic1.jpg.webp",
    "image/pic2.jpg.webp",
    "image/pic3.jpg.webp",
    "image/pic4.jpg.webp",
    "image/pic5.jpg.webp",
    "image/pic6.jpg.webp",
  ];
  List<String> posts = [
    "image/post1.png",
    "image/post2.png",
    "image/post3.png",
    "image/post4.png",
    "image/post5.png",
    "image/pos6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("image/instagram_tittle.png", height: 50),
        actions: [
          IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //story
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 33,
                          backgroundImage: AssetImage("image/story.png"),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(profileImage[index]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Profile Name",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Column(
              children: List.generate(
                6,
                (indez) => Column(
                  children: [
                    // header
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundImage: AssetImage("image/story.png"),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(profileImage[indez]),
                            ),
                          ),
                        ),
                        Text('profile name'),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert),
                        ),
                      ],
                    ),
                    //iamge post
                    Image.asset(posts[indez]),
                    // fotor post
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.chat_bubble_outline),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.label_outline),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bookmark_border),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
