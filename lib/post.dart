import 'package:divar/post_information.dart';
import 'package:flutter/material.dart';

class post extends StatelessWidget {

  PostInformation information;

  post({required this.information});


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
                  information.imageUrl,
                  width: 200,
                  height: 200,
                ),
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                    Text(information.name  , style: TextStyle(
                      color: textColor2,
                      fontSize: textSize,
                    ),
                    ),
                    const Spacer(),
                    Text(information.price ,
                      style: TextStyle(
                        color: textColor,
                        fontSize: textSize,
                      ),
                    ),
                    Text(
                      information.date ,
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
