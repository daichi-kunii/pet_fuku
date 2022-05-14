import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText =  'Kboydao';

  void changeKboyText(){
    kboyText = 'かっけえ';
    notifyListeners();

  }
}