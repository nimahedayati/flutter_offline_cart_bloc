import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

extension Spacer on int {
  Widget get gap => Gap(toDouble());
}
