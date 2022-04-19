import 'package:aqua_shop/ui/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cart_counter.dart';

class CounterWithFavBtn extends StatefulWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  _CounterWithFavBtnState createState() => _CounterWithFavBtnState();
}

class _CounterWithFavBtnState extends State<CounterWithFavBtn> {
  final String _favoriteAdded = 'Liked';
  final String _favoriteRemoved = 'Unliked';

  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const CartCounter(),
        IconButton(
          onPressed: () {
            setState(() => _isFavorite = !_isFavorite);

            SnackBar snackBar = SnackBar(
                content: Text(
                  _isFavorite ? _favoriteAdded : _favoriteRemoved,
                ),
                duration: const Duration(seconds: 3));
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(snackBar);
          },
          icon: Icon(
              _isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded
          ),
          color: _isFavorite ? Colors.red : Colors.grey,
          tooltip: 'Favorite',
        )
      ],
    );
  }
}
