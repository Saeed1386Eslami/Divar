import 'package:flutter/material.dart';
import 'package:divar/post_information.dart';

var textColor = Colors.black;
var textColor2 = Colors.grey;
var textColor3 = Colors.white;
var textSize = 24.0;
var textSize2 = 18.0;
var textSize3 = 13.0;

class Detail extends StatelessWidget {
  PostInformation information;

  Detail({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.share_outlined),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                information.imageUrl,
                width: 200,
                height: 200,
              ),
            ),
          ),
              //IconButton(
                //onPressed: () {
                  //Navigator.pop(context);
                //},
                //icon: Icon(Icons.arrow_back),
              //),
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
                        Text(information.name,
                            style: TextStyle(
                              color: textColor,
                              fontSize: textSize,
                            )),
                        Text(
                          information.date,
                          style: TextStyle(
                            color: textColor2,
                            fontSize: textSize2,
                          ),
                        ),
                      ]),
                )),
          ),
          Divider(
            color: Colors.grey,
          ),
          Onvan(),
          Divider(
            color: Colors.grey,
          ),
          Onvan(),
          Divider(
            color: Colors.grey,
          ),
          Onvan(),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(17),
            child: Text(
              " توضیحات ",
    textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: textSize,
                color: textColor,
              ),
            ),
          ),
          Text(
            " دیوار در زمینه فروش و خرید محصولات و"
            " خدمات مختلف فعالیت می کند و به کاربرانش این امکان را می دهد"
            " تا به راحتی و با قیمت مناسب، کالاهای موردنیازشان را"
            " پیدا کنند."
            " از جمله محصولاتی که در دیوار به فروش می رسد، می توان... ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: textSize3,
              color: textColor,
            ),
          ),
          Divider(color: Colors.black12, height: 33.7, thickness: 6.8),
          HelpBar(
            Help_text: " راهنمای خرید امن ",
            icon: Icons.question_mark,
          ),
          Divider(),
          HelpBar(
            Help_text:" ثبت تخلف و مشکل آگهی ",
            icon: Icons.warning_amber,
          ),
          Container(
            height: 80,
            color: Colors.black12,
            padding: EdgeInsets.only(left: 10, top: 27.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'پیام در چت',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1),
                      ),
                      primary: Colors.red,
                      fixedSize: const Size(140, 40)),
                ),
                Expanded(
                  child: Text(
                    ' شماره مخفی شده است ; پیام دهید ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
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
          Expanded(
              child: Text(
            'مقدار',
            style: TextStyle(fontSize: textSize2, color: textColor),
          )),
          Text(
            'عنوان',
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

class HelpBar extends StatelessWidget {
  var Help_text;
  IconData icon ;

  HelpBar({ super.key, required this.Help_text , required this.icon });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: (Row(
        children: [
          Icon(Icons.arrow_back_ios_new_rounded),
          Spacer(),
          Text(
            Help_text,
            textAlign: TextAlign.end,
          ),
          Container(
            width: 30,
            height: 30,
            child: Icon(icon),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black26),
                color: Colors.white54),
          ),
        ],
      )),
    );
  }
}