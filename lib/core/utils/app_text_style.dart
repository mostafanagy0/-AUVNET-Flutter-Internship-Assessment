import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle mulish14W300 = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontFamily: 'Mulish',
    fontWeight: FontWeight.bold,
  );
  static TextStyle dM12W700 = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w700,
  );
  static TextStyle dM16W700 = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.02,
  );

  static TextStyle rubik30W700 = TextStyle(
    color: const Color(0xFFF9F9F9),
    fontSize: 30,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.30,
  );
  static TextStyle dM20W700 = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w700,
  );
}
