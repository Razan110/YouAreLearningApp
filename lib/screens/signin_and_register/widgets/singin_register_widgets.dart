import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learnthings/utilities/styles/app_style.dart';

//App Bar
AppBar buildAppBar(String txt, void Function()? func) {
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
      txt,
      style: Styles.headLine1.copyWith(
        fontSize: 29,
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: txt == 'Create account'
        ? IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Styles.wightColor,
            ),
            onPressed: func,
          )
        : null,
  );
}
//

//sign in widgte
//we need context to accessing bloc later
Widget buildLogin(BuildContext context) {
  return SizedBox(
    width: 200.w,
    height: 70.h,
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
      style: text ==
              'By creating an account you are agreeing to our tearm and conditions.'
          ? Styles.headLine2.copyWith(fontSize: 13, color: Styles.wightColor)
          : Styles.headLine2,
    ),
  );
}

Widget buildTextField(String textType, String hintText, String iconPath,
    TextInputType keyboardType, void Function(String value)? func) {
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
              //to get the email and the password from the sign in
              onChanged: (value) => func!(value),
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
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget forgotPasswordOrNeedToRegster(String text, void Function()? func) {
  return SizedBox(
    width: 100.w,
    height: 15.h,
    child: GestureDetector(
      onTap: func,
      child: Text(
        text,
        style: Styles.headLine2.copyWith(
          color: Styles.seaColor,
          decoration: TextDecoration.underline,
          fontSize: text == 'Create account' ? 16 : 14,
        ),
      ),
    ),
  );
}

Widget buildLogInAndRegisterButton(String buttonText, void Function()? func) {
  return GestureDetector(
    //chang it to a single tap....
    onDoubleTap: func,

    // behavior: HitTestBehavior.translucent,
    // onTap: () {
    //   func;
    // },
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
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    ),
  );
}
