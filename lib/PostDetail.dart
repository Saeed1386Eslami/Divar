import 'package:flutter/material.dart';

var textColor = Colors.black;
var textColor2 = Colors.grey;
var textSize = 24.0;
var textSize2 = 18.0;
class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon ( Icons.share_outlined ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
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
                          Text('  عنوان دایرکتوری قبلی  >',
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
    Padding( padding: const EdgeInsets.all(20),
        child: Text (" توضیحات " , textDirection: TextDirection.ltr
          ,
        style: TextStyle(
          fontSize: textSize,
          color: textColor,
        ),
        ),

    )]

    ));

  }
}

    class Onvan extends StatelessWidget {
      const Onvan({super.key});

      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(7.0),
          child: (Row(
            children: [

              Expanded(child: Text('مقدار',
                style: TextStyle(
                    fontSize: textSize2,
                    color: textColor
                ),
              )),
              Text('عنوان',
                style: TextStyle(
                  fontSize: textSize2,
                  color: textColor2,
                ),
              ),
            ],
          )),
        );
      }
    }
