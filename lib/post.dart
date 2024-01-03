import 'package:flutter/material.dart';

class post extends StatelessWidget {

  String name;
  String price;
  String date;
  String imageUrl;

  post(this.name , this.price , this.date , this.imageUrl);


  @override
  Widget build(BuildContext context) {
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
                child: Image.network(
                  imageUrl,
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                    Text(name  , style: TextStyle(
                      color: textColor2,
                      fontSize: textSize,
                    ),
                    ),
                    const Spacer(),
                    Text(price ,
                      style: TextStyle(
                        color: textColor,
                        fontSize: textSize,
                      ),
                    ),
                    Text(
                      date ,
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
