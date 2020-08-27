import 'package:flutter/foundation.dart';

abstract class ListViewModel extends ChangeNotifier {
  bool get isLoading;
  bool get hasError;
  bool get hasData;
  String get errorMessage;
}
