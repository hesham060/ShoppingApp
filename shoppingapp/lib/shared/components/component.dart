import 'package:flutter/material.dart';

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (Route<dynamic> route) => false); // the line for remove previous page

Widget defaultTextFormField(
        {String? Function(String?)? validate,
        required TextEditingController controller,
        void Function(void)? onSubmit,
        void Function(void)? onChanged,
        required IconData? iconData,
        required String labelText,
        IconData? suffixIcon,
        VoidCallback? suffixPressed,
        VoidCallback? ontap,
        TextInputType? type,
        bool isClicable = true}) =>
    TextFormField(
      onTap: ontap,
      validator: validate,
      controller: controller,
      onFieldSubmitted: onSubmit,
      onChanged: onChanged,
      keyboardType: type,
      decoration: InputDecoration(
        prefixIcon: Icon(iconData),
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: suffixPressed,
              )
            : null,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        enabled: isClicable,
      ),
    );
Widget defaultButtom({
  
  @required Text? text,
 @ required Color ?color,
  required double radius,
  @required double? height,
  required VoidCallback ontap,
}) =>
    GestureDetector(
      onTap: ontap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(radius)),
        child: Center(child: text),
      ),
    );
    Widget defaultText({
      @required VoidCallback? Function,
       required String text})=>
       TextButton(onPressed: Function,
        child: Text(text.toUpperCase(),style: TextStyle(color: Colors.black),));
