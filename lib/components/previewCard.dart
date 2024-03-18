import 'package:flutter/material.dart';
import 'package:pushschool/components/button.dart';

class PreviewCard extends StatefulWidget {
  final String image;
  final IconData icon;
  final String title;
  final String subtitle;
  final String label;
  final String location;

  const PreviewCard ({
    required this.image,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.label,
    required this.location,
    super.key
  });

  @override
  State<PreviewCard> createState() => _PreviewCardState();
}

class _PreviewCardState extends State<PreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0
      ),
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
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              subtitle: Text(widget.subtitle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Button(
                  label: widget.label,
                  location: widget.location,
                ),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}