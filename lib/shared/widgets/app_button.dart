// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? bgColor;
  final Color? borderColor;
  final bool enable;
  final bool haveTop;
  final bool loading;
  final Color? loadingColor;
  final double height;
  final double radius;

  const AppButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.bgColor,
    this.borderColor,
    this.enable = true,
    this.haveTop = true,
    this.loading = false,
    this.loadingColor,
    this.height = 50.0,
    this.radius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: enable ? bgColor : bgColor?.withOpacity(.6),
            border: borderColor != null
                ? Border.all(
                    color: borderColor!,
                    width: 1.5,
                  )
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap:
                  (!loading && enable && onPressed != null) ? onPressed : null,
              borderRadius: BorderRadius.circular(radius - 1),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Opacity(opacity: loading ? 0 : 1, child: child),
              ),
            ),
          ),
        ),
        loading == false
            ? Container()
            : Positioned.fill(
                child: Center(
                  child: CupertinoTheme(
                    data: CupertinoTheme.of(context).copyWith(
                      brightness: bgColor == const Color(0xff006A36)
                          ? Brightness.dark
                          : Brightness.light,
                    ),
                    child: CupertinoActivityIndicator(
                      radius: 16,
                      color: loadingColor,
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
