import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Button extends StatefulWidget {
  final String label;
  final String location;

  const Button({
    required this.label,
    required this.location,
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
      padding: const EdgeInsets.only(bottom: 10.0),
      child: FilledButton(
        onPressed: () => {context.go(widget.location)},
        //onPressed: onPressed,
        child: Text(
          widget.label,
        ),
      ),
    );
  }
}
