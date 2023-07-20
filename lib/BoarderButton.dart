
import 'package:flutter/material.dart';

class BoarderButton extends StatelessWidget {
String text;
Function onPlayerClickCallBack ;
int index;
BoarderButton(this.text,this.onPlayerClickCallBack,this.index);
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: Container(
          margin: EdgeInsets.all(1),
          child: ElevatedButton(onPressed: (){
            onPlayerClickCallBack(index);
          }, child: Text('$text',  style:
          TextStyle( fontSize: 30,
              fontWeight: FontWeight.bold),
          ),
          )),
    );
  }
}
