import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

//App Bar
AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10.0),
      child: Container(
        color: Styles.wightColor,
        height: 0.5,
      ),
    ),
    backgroundColor: Styles.bgColor,
    title: Text(
      'Log In',
      style: Styles.headLine1.copyWith(
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
//

//sign in widgte
//we need context to accessing bloc later
Widget buildLogin(BuildContext context) {
  return SizedBox(
    width: 200.w,
    height: 100.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _singInMethodsIcons('assets/images/google.png'),
        _singInMethodsIcons('assets/images/apple-logo.png'),
        _singInMethodsIcons('assets/images/facebook.png'),
      ],
    ),
  );
}

//sign in methods google, apple and facebook
Widget _singInMethodsIcons(String iconPath) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      width: 40.w,
      height: 40.w,
      child: Image.asset(
        iconPath,
        scale: 17,
      ),
    ),
  );
}

Widget reuseableText(String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5.h),
    child: Text(
      text,
      style: Styles.headLine2,
    ),
  );
}

Widget buildTextField(String textType, String hintText, String iconPath,
    TextInputType keyboardType) {
  return Container(
    width: 325.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: Styles.bgColor,
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
      border: Border.all(
        color: Styles.wightColor,
      ),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Image.asset(
            iconPath,
            scale: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: SizedBox(
            width: 270.w,
            height: 50.h,
            child: TextField(
              style: Styles.inputText,
              autofocus: false,
              autocorrect: false,
              obscureText: textType == 'password' ? true : false,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Styles.textFieldHints,
                border: InputBorder.none,
                enabledBorder: null,
                disabledBorder: null,
                // border: const OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //   ),
                // ),
                // enabledBorder: const OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //   ),
                // ),
                // disabledBorder: const OutlineInputBorder(
                //   borderSide: BorderSide(
                //     color: Colors.transparent,
                //   ),
                // ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget forgotPasswordOrNeedToRegster(String text) {
  return SizedBox(
    width: 100.w,
    height: 13.h,
    child: GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: Styles.headLine2.copyWith(
            color: const Color.fromARGB(255, 196, 195, 195),
            decoration: TextDecoration.underline,
            fontSize: 15),
      ),
    ),
  );
}

Widget buildLogInAndRegisterButton(String buttonText) {
  return GestureDetector(
    child: Container(
      width: 140.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: Styles.buttomColor,
        borderRadius: BorderRadius.all(Radius.circular(15.w)),
      ),
      child: TextButton(
        child: Text(
          buttonText,
          style: Styles.headLine1.copyWith(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    ),
  );
}
