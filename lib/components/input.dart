import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String? label;

  const Input({
    required this.label,
    super.key,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColorLight)),
          enabledBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColorLight)),
          labelText: widget.label,
        ),
      ),
    );
  }
}
