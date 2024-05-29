import 'package:flutter/material.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/comment_card.dart';
import 'package:pushschool/http/dtos/post_dto.dart';

class ForumPostScreen extends StatefulWidget {
  final Post post;

  const ForumPostScreen({
    required this.post,
    super.key,
  });

  @override
  State<ForumPostScreen> createState() => _ForumPostScreenState();
}

class _ForumPostScreenState extends State<ForumPostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          key: null,
          pageTitle: widget.post.title,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Text(
                  '${widget.post.ownerName} • ${widget.post.datePost}',
                ),
              ),
              Text(
                widget.post.content,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Divider(
                  height: 5.0,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.post.comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = widget.post.comments[index];
                    return CommentCard(
                      userName: item.userName,
                      userComment: item.userComment,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
