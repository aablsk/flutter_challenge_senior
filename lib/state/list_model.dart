import 'package:flutter/foundation.dart';

abstract class ListModel extends ChangeNotifier {
  bool get isLoading;
  bool get hasError;
  bool get hasData;
  String get errorMessage;
}
