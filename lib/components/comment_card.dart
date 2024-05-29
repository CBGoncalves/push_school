import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class ListCard extends StatelessWidget {
  final String userName;
  final String userComment;

  const ListCard({
    required this.userName,
    required this.userComment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            bottom: 16.0,
            left: 8.0,
            right: 8.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userName,
                style: const TextStyle(
                  fontSize: TextConsts.largeText,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Color(
                    0xFFddf4ff,
                  ),
                ),
                maxLines: 2,
              ),
              Text(
                userComment,
                style: const TextStyle(
                  fontSize: TextConsts.mediumText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
