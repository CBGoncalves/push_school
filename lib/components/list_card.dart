import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String owner;
  final String date;
  final String comments;

  const ListCard({
    required this.title,
    required this.owner,
    required this.date,
    required this.comments,
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: TextConsts.largeText,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "$comments comentários",
                    style: const TextStyle(
                        fontSize: TextConsts.mediumText,
                        fontWeight: FontWeight.w100,
                        color: Color(
                          0xFF9EA1A5,
                        )),
                  ),
                  const Text(' - '),
                  Text(
                    owner,
                    style: const TextStyle(
                        fontSize: TextConsts.mediumText,
                        fontWeight: FontWeight.w100,
                        color: Color(
                          0xFF9EA1A5,
                        )),
                  ),
                  const Text(' - '),
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: TextConsts.mediumText,
                        fontWeight: FontWeight.w100,
                        color: Color(
                          0xFF9EA1A5,
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
