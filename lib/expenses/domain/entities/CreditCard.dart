import 'package:expenses_app/core/app_images.dart';

class CreditCard {
  final String name;
  final double valueSpent;
  final double limitUsage;
  final String logoImage;

  CreditCard(this.name, this.valueSpent, this.limitUsage, this.logoImage);

  CreditCard.Nubank()
      : name = 'Nubank',
        valueSpent = 1650.00,
        limitUsage = 9250,
        logoImage = AppImages.mastercard_logo;
}
