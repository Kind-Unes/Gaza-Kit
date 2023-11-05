import 'package:flutter/material.dart';
class MyGridTile extends StatelessWidget {
  const MyGridTile({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onTap,
    required this.borderColor,
  });

  final String text;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: MediaQuery.of(context).size.width*0.4,
          width:  MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 3, color: borderColor),
          ),
          child: Container(
              alignment: Alignment.center,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "product_sans", color: textColor, fontSize: 18),
              )),
        ),
      ),
    );
  }
}
