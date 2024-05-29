import 'package:flutter/material.dart';
import 'package:pushschool/constants/text_consts.dart';

class CommentCard extends StatelessWidget {
  final String userName;
  final String userComment;
  final String image;
  final bool hasImage;

  const CommentCard({
    required this.userName,
    required this.userComment,
    this.image = "",
    this.hasImage = false,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              hasImage
                  ? Image.network(
                      image,
                      scale: 1.5,
                    )
                  : Container(),
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: TextStyle(
                        fontSize: TextConsts.mediumText,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      userComment,
                      style: const TextStyle(
                        fontSize: TextConsts.mediumText,
                      ),
                      maxLines: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
