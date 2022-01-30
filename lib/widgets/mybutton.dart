import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CElevatedButon extends StatelessWidget {
  const CElevatedButon(
      {Key? key,
      this.onPressed,
      this.title,
      this.width,
      this.height,
      this.loading = false,
      this.textColor,
      this.buttonColor})
      : super(key: key);
  final double? width;
  final double? height;
  final Function(BuildContext context)? onPressed;
  final String? title;
  final Color? textColor;
  final Color? buttonColor;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width!,
        height: height!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonColor!, // background (button) color
            onPrimary: textColor!, // foreground (text) color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title!,
                style: TextStyle(color: textColor, fontSize: 14.sp),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Visibility(
                visible: loading,
                child: const SizedBox(
                    height: 20.0,
                    width: 20.0,
                    child: CircularProgressIndicator()),
              ),
            ],
          ),
          onPressed: () {
            onPressed!(context);
          },
        ));
  }
}
