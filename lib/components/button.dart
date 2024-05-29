import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class Button extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool hasIcon;
  final IconData icon;
  final MainAxisSize mainAxisSize;

  const Button({
    required this.label,
    required this.onPressed,
    this.hasIcon = false,
    this.icon = Icons.message,
    this.mainAxisSize = MainAxisSize.min,
    super.key,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  //late final bool enabled;

  @override
  Widget build(BuildContext context) {
    //final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: FilledButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all(Theme.of(context).primaryColor),
          overlayColor:
              WidgetStateProperty.all(Theme.of(context).primaryColorLight),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        //onPressed: onPressed,
        child: Row(
          mainAxisSize: widget.mainAxisSize,
          children: [
            widget.hasIcon
                ? Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      widget.icon,
                    ),
                  )
                : Container(),
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: TextConsts.largeText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
