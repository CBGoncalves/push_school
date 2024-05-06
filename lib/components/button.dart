import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class Button extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;

  const Button({
    required this.label,
    required this.onPressed,
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
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          overlayColor:
              MaterialStateProperty.all(Theme.of(context).primaryColorLight),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        //onPressed: onPressed,
        child: Text(
          widget.label,
          style: const TextStyle(
            fontSize: TextConsts.largeText,
          ),
        ),
      ),
    );
  }
}
