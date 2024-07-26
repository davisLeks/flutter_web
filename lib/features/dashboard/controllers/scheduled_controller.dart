import 'package:get/get.dart';

import '../models/schedule_model.dart';

class ScheduledController extends GetxController {
  static ScheduledController get instance => Get.find();
  final scheduled = const [
    ScheduledModel(title: "Hatha Yoga", date: "Today, 9AM - 10AM"),
    ScheduledModel(title: "Body Combat", date: "Tomorrow, 5PM - 6PM"),
    ScheduledModel(title: "Hatha Yoga", date: "Wednesday, 9AM - 10AM"),
  ];
}
