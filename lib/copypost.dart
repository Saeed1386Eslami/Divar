import 'package:flutter/material.dart';

class post extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _poststate();
  }
}

class _poststate extends State<post> {
  bool isliked = false;

  @override
  Widget build(BuildContext context) {
    var textColor = Colors.grey;
    var textSize = 12.0;
    return Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: 200,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isliked= !isliked;
                              });
                            },
                            icon: isliked
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                        const Spacer(),
                        Text(
                          '100.000.000تومان',
                          style: TextStyle(
                            color: textColor,
                            fontSize: textSize,
                          ),
                        ),
                        Text(
                          '100.000.000تومان',
                          style: TextStyle(
                            color: textColor,
                            fontSize: textSize,
                          ),
                        ),
                        Text(
                          'لحظاتی پیش در محله',
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
}

