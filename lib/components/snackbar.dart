import 'package:flutter/material.dart';

SnackBar snackBar(String contentText, String actionLabel) {
  return SnackBar(
    content: Text(contentText),
    backgroundColor: Colors.black38,
    duration: const Duration(milliseconds: 3000),
    width: 250.0,
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
    action: SnackBarAction(
      label: actionLabel,
      textColor: Colors.white60,
      onPressed: () {},
    ),
  );
}
