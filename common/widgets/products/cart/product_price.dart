import 'package:flutter/material.dart';

class productPrice extends StatelessWidget {
  const productPrice({
    super.key,
    this.currencySign = '₹',
    required this.price,
    this.maxlines = 1,
    this.isLarge = false,
    this.Linethrough = false,
  });

  final String currencySign, price;
  final int maxlines;
  final bool isLarge;
  final bool Linethrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: Linethrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: Linethrough ? TextDecoration.lineThrough : null),
    );
  }
}
