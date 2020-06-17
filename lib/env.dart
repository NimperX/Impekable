import 'package:flutter/material.dart';

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height/720;
}

double displayWidth(BuildContext context) {
  return displaySize(context).width/1024;
}

double displayHeightPercentage(BuildContext context) {
  return displaySize(context).height/100;
}

double displayWidthPercentage(BuildContext context) {
  return displaySize(context).width/100;
}