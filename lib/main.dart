import 'package:divar/PostDetail.dart';
import 'package:divar/post.dart';
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
          child: post(" محصول شماره یک ", "400 تومان" , " امروز " , "https://picsum.photos/250?image=9"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Detail(),
              ),
            );
          },
        ),
          Divider(
              color: Colors.black,
            ),
            post (" محصول شماره دو " , "700 تومان " , " دیروز " ,'https://picsum.photos/250?image=10',),
            Divider(
              color: Colors.black,
            ),
            post(" محصول شماره سه " , "300 تومان" , " سه روز پیش " , "https://picsum.photos/250?image=11"),
            Divider(
              color: Colors.black,
            ),
            post(" محصول شماره چهار " , " 900 تومان" , " 5 روز پیش " , "https://picsum.photos/250?image=12"),
            Divider(
              color: Colors.black,
            ),
            post(" محصول شماره پنج " , " 100 نومان " , " یک هفته پیش " , "https://picsum.photos/250?image=13"),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          )),
      backgroundColor: Colors.amber,
    );
  }
}
