import 'package:flutter/material.dart';

import 'package:expenses_app/core/app_images.dart';

class CreditCard {
  final String name;
  final Color color;
  final double valueSpent;
  final double limitUsage;
  final String logoImage;

  CreditCard(
      this.name, this.valueSpent, this.limitUsage, this.logoImage, this.color);

  CreditCard.Nubank()
      : name = 'Nubank',
        valueSpent = 1650.00,
        limitUsage = 9250,
        color = Colors.deepPurple,
        logoImage = AppImages.mastercard_logo;

  CreditCard.Inter()
      : name = 'Inter',
        valueSpent = 1650.00,
        limitUsage = 9250,
        color = Colors.deepOrange,
        logoImage = AppImages.mastercard_logo;

  CreditCard.Digio()
      : name = 'Digio',
        valueSpent = 1650.00,
        limitUsage = 9250,
        color = Colors.indigo,
        logoImage = AppImages.visa_logo;

  @override
  bool operator ==(covariant CreditCard other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode {
    return name.hashCode;
  }

  @override
  String toString() {
    return 'CreditCard{name: $name}';
  }
}
