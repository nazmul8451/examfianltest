import 'package:device_preview/device_preview.dart';
import 'package:examtest/examUI.dart';
import 'package:examtest/final_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const ExamTest(), // runApp এর ভিতরে DevicePreview
    ),
  );
}

class ExamTest extends StatelessWidget {
  const ExamTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // device_preview এর জন্য এটা দরকার
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home:Final_Ui(),
    );
  }
}
