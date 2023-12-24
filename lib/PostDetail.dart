import 'package:flutter/material.dart';
import 'Onvan.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    var textColor = Colors.black;
    var textSize = 24.0;
    var textColor2 = Colors.grey;
    var textSize2 = 18.0;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://picsum.photos/250?image=9',
                width: 200,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: SizedBox(
                  height: 100,
                  width: 400,
                  child: Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('  عنوان دایرکتوری قبلی  >' ,
                          style: TextStyle(
                            color: textColor2,
                            fontSize: textSize2,
                          )),
                          Spacer(),
                          Text('عنوان آگهی',
                          style: TextStyle(
                            color: textColor,
                            fontSize: textSize,
                          )),
                      Text(
                        'لحظاتی پیش در شهر محدوده، دسته',
                        style: TextStyle(
                          color: textColor2,
                          fontSize: textSize2,
                        ),
                      ),
                    ]),
                  )),
            ),
            Divider(
              color: Colors.black,
            ),
            Onvan(),
            Divider(
              color: Colors.black,
            ),
            Onvan(),
            Divider(
              color: Colors.black,
            ),
            Onvan(),
            Divider(
              color: Colors.black,
            ),
          ],
        ));
  }
}
