import 'package:flutter/material.dart';
import 'package:pushschool/components/button.dart';
import 'package:pushschool/constants/text_consts.dart';

class PreviewCard extends StatefulWidget {
  final String image;
  final IconData? icon;
  final String title;
  final String subtitle;
  final String label;
  final VoidCallback onPressed;

  const PreviewCard({
    required this.image,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.label,
    required this.onPressed,
    super.key,
  });

  @override
  State<PreviewCard> createState() => _PreviewCardState();
}

class _PreviewCardState extends State<PreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  widget.image,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            ListTile(
              leading: Icon(widget.icon),
              title: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: TextConsts.largeText,
                ),
                maxLines: 2,
              ),
              subtitle: Text(
                widget.subtitle,
                style: const TextStyle(
                    fontSize: TextConsts.mediumText,
                    fontWeight: FontWeight.w100),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Button(
                    label: widget.label,
                    onPressed: widget.onPressed,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
