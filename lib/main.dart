import 'package:expenses_app/app/data/repositories/credit_card_repository_impl.dart';
import 'package:expenses_app/app/domain/use_cases/add_credit_card_usecase.dart';
import 'package:expenses_app/app/domain/use_cases/get_credit_cards_usecase.dart';
import 'package:expenses_app/app/presentation/credit_card/store/credit_card_store.dart';
import 'package:expenses_app/app/presentation/home/home_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupDI();
  runApp(const MainApp());
}

GetIt getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<CreditCardRepositoryImpl>(
    () => CreditCardRepositoryImpl(),
  );
  getIt.registerLazySingleton<GetCreditCardUsecaseImpl>(
    () => GetCreditCardUsecaseImpl(
      repository: getIt<CreditCardRepositoryImpl>(),
    ),
  );
  getIt.registerLazySingleton<AddCreditCardUsecaseImpl>(
    () => AddCreditCardUsecaseImpl(
      repository: getIt<CreditCardRepositoryImpl>(),
    ),
  );
  getIt.registerLazySingleton<CreditCardStore>(
    () => CreditCardStore(
      addCreditCardUsecase: getIt<AddCreditCardUsecaseImpl>(),
      getCreditCardUsecase: getIt<GetCreditCardUsecaseImpl>(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xFF001E3D),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        textTheme:
            GoogleFonts.spaceGroteskTextTheme(Theme.of(context).textTheme),
      ),
      home: HomeView(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}