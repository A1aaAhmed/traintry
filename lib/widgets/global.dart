library globals;

import 'package:flutter/widgets.dart';

var numberOfSeats = ValueNotifier<int>(0);

var amountToBePayed = ValueNotifier<int>(0);

int seats = 1;
List<String> selectedSeats = [];
List<String> gates = [];
