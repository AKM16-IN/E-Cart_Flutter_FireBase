import 'package:ecart/common/widgets/custom%20Shapes/containers/circularContainer.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class choiceChip extends StatelessWidget {
  const choiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {

    final isColor = Helpers.getColor(text) != null;

    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: selected ? CColors.white : null,
      ),
      avatar: isColor
          ? CircularContainer(
              height: 40, width: 40, backgroundColor: Helpers.getColor(text)!)
          : null,
      shape: isColor ? CircleBorder() : null,
      labelPadding:  isColor ? EdgeInsets.all(0) : null,
      padding:  isColor? EdgeInsets.all(0) : null,
      selectedColor:  isColor ? Helpers.getColor(text)! : null,
      //backgroundColor:  isColor ?  Helpers.getColor(text)! : null ,
    );
  }
}
