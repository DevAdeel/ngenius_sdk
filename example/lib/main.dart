import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ngenius_sdk/ngenius_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const CheckoutScreen(),
                ),
              ),
              child: const Text("Initiate Checkout"),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NgeniusCheckout(
      apiUrl: "https://api-gateway.sandbox.ngenius-payments.com/",
      apiKey:
          "ZGMzYmMxNjYtNjU4Mi00MzVmLWI3N2MtY2E1YTMyM2FjOTMzOjMzNTgxOGRkLTM4ZDYtNDBlNS1iNDM2LTI3ZTllZjc2OTI5MQ==",
      outletId: "50ab288c-b754-4bab-99b7-32d33347a132",
      currency: "AED",
      amount: 1,
      onPaymentCreated: (data) {
        log(data);
        log(data['reference']);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Success'),
          ),
        );
        Navigator.pop(context);
      },
      // logLevel: LogLevel.all,
      // onError: () => print('An error occured'),
    );
  }
}
