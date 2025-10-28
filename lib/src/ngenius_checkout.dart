import 'package:flutter/material.dart';
import 'package:ngenius_sdk/src/utils/enums.dart';

import 'screens/checkout_screen.dart';

class NgeniusCheckout extends StatelessWidget {
  final String apiUrl;
  final String apiKey;
  final String outletId;
  final String currency;
  final int amount;
  final Function(dynamic) onPaymentCreated;
  final VoidCallback? onError;
  final LogLevel logLevel;

  final Color? backgroundColor;
  final AppBar? appBar;

  final bool showError;

  const NgeniusCheckout({
    required this.apiUrl,
    required this.apiKey,
    required this.outletId,
    required this.currency,
    required this.amount,
    required this.onPaymentCreated,
    this.logLevel = LogLevel.all,
    this.onError,
    this.backgroundColor,
    this.appBar,
    this.showError = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CheckoutScreen(
      apiUrl: apiUrl,
      apiKey: apiKey,
      outletId: outletId,
      currency: currency,
      amount: amount,
      onPaymentCreated: onPaymentCreated,
      onError: onError,
      logLevel: logLevel,
      showError: showError,
      backgroundColor: backgroundColor,
      appBar: appBar,
    );
  }
}
