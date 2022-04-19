import 'package:flutter/material.dart';
import 'package:aqua_shop/data/models/product.dart';

import 'package:aqua_shop/ui/styles/constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Our Fresh Fish",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                product.title,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: defaultPadding / 2),
              Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(text: "Price\n"),
                        TextSpan(
                          text: "\$${product.price}",
                          style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    child: Hero(
                      tag: "${product.id}",
                      child: Image.asset(
                        product.image,
                        height: 150,
                        width: 150,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
