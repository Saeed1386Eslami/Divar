import 'package:divar/PostDetail.dart';
import 'package:divar/post.dart';
import 'package:divar/post_information.dart';
import 'package:flutter/material.dart';
import 'Category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.red),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostInformation post1 = PostInformation(
         name: " محصول شماره یک",
        price: "400 تومان",
       date: " امروز ",
        imageUrl: "https://picsum.photos/250?image=9");

    PostInformation post2 = PostInformation(
      name: " محصول شماره دو ",
      price: "700 تومان ",
      date: " دیروز ",
      imageUrl: 'https://picsum.photos/250?image=8',
    );
    PostInformation post3 = PostInformation(
      name: " محصول شماره سه ",
      price: "300 تومان ",
      date: " دیروز ",
      imageUrl: 'https://picsum.photos/250?image=11',
    );
    PostInformation post4 = PostInformation(
      name: " محصول شماره چهار ",
      price: "300 تومان ",
      date: " دیروز ",
      imageUrl: 'https://picsum.photos/250?image=5',
    );
    PostInformation post5 = PostInformation(
      name: " محصول شماره پنج ",
      price: "300 تومان ",
      date: " دیروز ",
      imageUrl: 'https://picsum.photos/250?image=18',
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Divar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Categorylist(),
            const Divider(
              color: Colors.black,
            ),
            InkWell(
              child: post(
                information: post1,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
information: post1,
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: post(
                information: post2,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
information: post2,
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: post(information: post3,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
information: post3,
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: post(information: post4,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
information: post4,
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.black,
            ),
            InkWell(
              child: post(information: post5,),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
information: post5,
                    ),
                  ),
                );
              },
            ),
            Divider(
              color: Colors.black,
            ),
            PostKhas()
          ],
        ),
      ),
    );
  }
}


PostKhas() {

  @override
  var textColor = Colors.grey;
  var textSize = 20.0;
  var textColor2 = Colors.black;
  return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 200,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/1.webp" ,
                height: 200,
                width : 200,
              ),
            ),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text( "  درب چوبی " , style: TextStyle(
                        color: textColor2,
                        fontSize: textSize,
                      ),
                      ),
                      const Spacer(),
                      Text(" 4 میلیون و 300 هزار تومان " ,
                        style: TextStyle(
                          color: textColor,
                          fontSize: textSize,
                        ),
                      ),
                      Text(
                        " 11 روز پیش " ,
                        style: TextStyle(
                          color: textColor,
                          fontSize: textSize,
                        ),
                      ),
                    ])),
          ],
        ),
      ));
}
