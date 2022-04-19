import 'package:aqua_shop/ui/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:aqua_shop/ui/screens/home/home_screen.dart';

void main() => runApp(const AquaShop());

class AquaShop extends StatelessWidget {
  const AquaShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aqua Shop',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: primaryTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
