import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/results_page.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() => runApp(BMICalculator());

FirebaseAnalytics analytics = FirebaseAnalytics();

class BMICalculator extends StatelessWidget {

  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics)
      ],
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E21),
          scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: InputPage(
        title: 'Firebase Analytics Demo',
        analytics: analytics,
        observer: observer,
      ),
      routes: {
        '/results': (context) => ResultsPage(),
      },
    );
  }
}

