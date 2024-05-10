import 'package:ecart/common/widgets/Text/section_heading.dart';
import 'package:ecart/common/widgets/appBar/appbar.dart';
import 'package:ecart/common/widgets/images/circularImage.dart';
import 'package:ecart/features/personalizaton/screens/profile/widgets/profile_menu.dart';
import 'package:ecart/utils/constants/image_strings.dart';
import 'package:ecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SSizes.dspace),
          child: Column(
            children: [
              ///profile picture
              Center(
                child: Column(

                  children: [
                    circularImage(image: IImageString.user, height: 100, width: 100,),
                    TextButton(onPressed: (){}, child: Text('Change Profile Picture'),),
                  ],
                ),
              ),

              ///Details
              SizedBox(height: SSizes.m,),
              Divider(),
              SizedBox(height: SSizes.m,),
              SectionHeading(title: 'Profile Information'),
              SizedBox(height: SSizes.m,),
              profileMenu(onPressed: () {  }, title: 'Name', value: 'ABHINAV',),
              profileMenu(onPressed: () {  }, title: 'Username', value: 'AK_16', icon: Iconsax.copy,),

              SizedBox(height: SSizes.m,),
              Divider(),
              SizedBox(height: SSizes.m,),
              SectionHeading(title: 'Personal Information'),
              SizedBox(height: SSizes.m,),
              profileMenu(onPressed: (){}, title: 'User_ID', value: '1618', icon: Iconsax.copy,),
              profileMenu(onPressed: (){}, title: 'Email_ID', value: 'abhi80173@gmailcom'),
              profileMenu(onPressed: (){}, title: 'Phone No.', value: '+91 7404488673'),
              profileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              profileMenu(onPressed: (){}, title: 'Date of Birth', value: '16 Sep, 2003'),
              Divider(),

              ///Close account
              TextButton(onPressed: (){}, child: Text('Close Account', style: TextStyle(color: Colors.red, fontSize: 15),),),
            ],
          ),
        ),
      ),
    );
  }
}


