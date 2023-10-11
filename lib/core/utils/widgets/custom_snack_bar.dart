import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

showCustomSnackBar(context, String text, bool launch) {
  if (launch) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
