import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Container(
          width: 60,
          height: 60,
          child: Icon(Icons.ac_unit),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black26),
              color: Colors.red),
        ),
        Text(" وسایل نقلیه "),
      ]),
    );
  }
}

class Categorylist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page5(),
                  ),
                );
              },
              child: Category()),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: Category()),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page4(),
                  ),
                );
              },
              child: Category()),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page5(),
                  ),
                );
              },
              child: Category()),
          Category(),
          Category(),
          Category(),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
      backgroundColor: Colors.blue,
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

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
      backgroundColor: Colors.blue,
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 250,
          child: Text(
            "هستم container من یک",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          transform: Matrix4.rotationY(.5),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
             // borderRadius: BorderRadius.circular(8),
            color: Colors.blueAccent,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
