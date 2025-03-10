import 'package:flutter/material.dart';
import 'package:newzler/configs/utils.dart';
import 'package:newzler/presentation/views/profile/widgets/edit_mobile_number_birthday_gender_country_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Utils.getKAppPrimaryAppBar('Account setting', true, null),
      backgroundColor: Utils.whiteColor,
      body: _getBody(context),
    );
  }

  _getBody(context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading text
            Text(
              'Profile',
              style: Utils.kAppPrimaryTextStyle.copyWith(fontSize: 32),
            ),

            // space
            const SizedBox(
              height: 20.0,
            ),

            // name label
            Text(
              'NAME',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'Sabir Bugti',
              style: Utils.kAppPrimaryTextStyle,
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'USERNAME',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'sabir',
              style: Utils.kAppPrimaryTextStyle,
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'EMAIL ADDRESS',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'abc123@example',
              style: Utils.kAppPrimaryTextStyle,
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                Icons.arrow_right_alt_rounded,
                size: 30,
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'MOBILE NUMBER',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: '+91-1234567890',
              style: Utils.kAppPrimaryTextStyle,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditMobileBirthdayGenderCountryView(
                              heading: 'Your mobile number',
                            )),
                  );
                },
                child: const Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 30,
                ),
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // Brthday label
            Text(
              'BIRTHDAY',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'December 8,1990',
              style: Utils.kAppPrimaryTextStyle,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditMobileBirthdayGenderCountryView(
                              heading: 'Your birthday',
                            )),
                  );
                },
                child: const Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 30,
                ),
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'GENDER',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'Male',
              style: Utils.kAppPrimaryTextStyle,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditMobileBirthdayGenderCountryView(
                              heading: 'Your gender',
                            )),
                  );
                },
                child: const Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 30,
                ),
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'COUNTRY',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'India',
              style: Utils.kAppPrimaryTextStyle,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            EditMobileBirthdayGenderCountryView(
                              heading: 'Your country',
                            )),
                  );
                },
                child: const Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 30,
                ),
              )),
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'TIMEZONE',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              // enabled: false,
              readOnly: true,
              initialValue: 'Asia/kolkata',
              style: Utils.kAppPrimaryTextStyle,
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'LAST LOGIN',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              readOnly: true,
              initialValue: 'January 18,2021 02:32 PM',
              style: Utils.kAppPrimaryTextStyle,
            ),
            // space
            const SizedBox(
              height: 40.0,
            ),

            // name label
            Text(
              'MEMBER SINCE',
              style: Utils.kAppPrimaryTextStyle
                  .copyWith(fontSize: 12.0, fontWeight: FontWeight.w800),
            ),

            // space
            const SizedBox(
              height: 10.0,
            ),

            // email form field
            TextFormField(
              readOnly: true,
              initialValue: 'January 18,2021',
              style: Utils.kAppPrimaryTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
