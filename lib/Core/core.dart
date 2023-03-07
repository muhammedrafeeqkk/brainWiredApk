import 'package:flutter/cupertino.dart';

Text myText({
  required String text,
  required FontWeight fontweight,
  required Color color,
  required double size,
}) {
  return Text(
    text,
    style: TextStyle(fontWeight: fontweight, color: color, fontSize: size),
  );
}

SizedBox sizedBox10() {
  return SizedBox(
    height: 10,
  );
}

SizedBox sizedBox5() {
  return SizedBox(
    height: 5,
  );
}

SizedBox sizedBox20() {
  return SizedBox(
    height: 40,
  );
}
