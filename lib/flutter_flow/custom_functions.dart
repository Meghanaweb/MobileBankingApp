import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? numberToWords(int? number) {
  if (number == 0) {
    return 'zero';
  }

  if (number == null) {
    return '';
  }

  String words = '';
  if (number < 0) {
    words += 'minus ';
    number = -number;
  }

  List<String> units = [
    '',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ];
  List<String> teens = [
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen'
  ];
  List<String> tens = [
    '',
    '',
    'twenty',
    'thirty',
    'forty',
    'fifty',
    'sixty',
    'seventy',
    'eighty',
    'ninety'
  ];
  List<String> thousands = ['', 'thousand', 'million', 'billion', 'trillion'];

  int i = 0;
  while (number! > 0) {
    if (number % 1000 != 0) {
      String subWords = '';
      int subNumber = number % 1000;
      if (subNumber >= 100) {
        subWords += units[subNumber ~/ 100] + ' hundred ';
        subNumber %= 100;
      }
      if (subNumber >= 10 && subNumber <= 19) {
        subWords += teens[subNumber - 10] + ' ';
      } else if (subNumber >= 20) {
        subWords += tens[subNumber ~/ 10] + ' ';
        subNumber %= 10;
      }
      if (subNumber >= 1 && subNumber <= 9) {
        subWords += units[subNumber] + ' ';
      }
      subWords += thousands[i] + ' ';
      words = subWords + words;
    }
    number ~/= 1000;
    i++;
  }

  return words.trim();
}

List<String> getListProgrammingLanguages() {
  // return a list of 5 top computer prgramming languages
  return [
    'Java',
    'Python',
    'C++',
    'C#',
    'JavaScript',
  ];
}

String accountNumberDigitMasking(String accountNumber) {
  // show first and last 4 digits and hide the middle digits of AccountNumber in string format
  if (accountNumber.length < 8) {
    return accountNumber;
  }
  String firstFourDigits = accountNumber.substring(0, 4);
  String lastFourDigits = accountNumber.substring(accountNumber.length - 4);
  String hiddenDigits = '';
  for (int i = 0; i < accountNumber.length - 8; i++) {
    hiddenDigits += '*';
  }
  return firstFourDigits + hiddenDigits + lastFourDigits;
}

String cardNumberMasking(String cardnumber) {
  // show only last 4 digits hide first digits and show only last 4 digits from the hidden value
  String last4Digits = cardnumber.substring(cardnumber.length - 4);
  String maskedNumber = "**** $last4Digits";
  return maskedNumber;
}

String? getMonthAndYearFrom(DateTime? cardExpDate) {
  // convert datetime to mm/yy format
  if (cardExpDate == null) {
    return null;
  }
  return DateFormat('MM/yy').format(cardExpDate);
}
