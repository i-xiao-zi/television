
import 'dart:collection';

import 'package:flutter/cupertino.dart';

class FocusModel with ChangeNotifier {
  late bool appBar = false;
  late bool tabBar = false;
  late bool bili = false;
  late Queue<KeyEvent> events = Queue();
  void addEvent(KeyEvent event){
    events.add(event);
    notifyListeners();
  }
  KeyEvent getEvent(){
    KeyEvent event = events.removeFirst();
    notifyListeners();
    return event;
  }
}