import 'package:ecart/common/widgets/images/circularImage.dart';
import 'package:ecart/utils/constants/colors.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class usrProfileTile extends StatelessWidget {
  const usrProfileTile({
    super.key, required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: circularImage(
        image: IImageString.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Abhinav',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: CColors.white),
      ),
      subtitle: Text(
        'support@hatti.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: CColors.white),
      ),
      trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.edit,
            color: CColors.white,
          )),
    );
  }
}