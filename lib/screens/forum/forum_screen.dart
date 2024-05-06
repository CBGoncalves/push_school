import 'package:flutter/material.dart';
import 'package:pushschool/components/app_bar.dart';
import 'package:pushschool/components/list_card.dart';
import 'package:pushschool/constants/text_consts.dart';

import '../../components/railmenu.dart';
import '../../http/dtos/post_dto.dart';

class ForumScreen extends StatefulWidget {
  final List<Post> postList;

  const ForumScreen({
    required this.postList,
    super.key,
  });

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopBar(
        key: null,
        pageTitle: "Bem vindo ao Fórum",
      ),
      body: Row(
        children: [
          const RailMenu(
            selectedDrawerIndex: 2,
          ),
          const SizedBox(
            width: 6,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.postList.length,
              itemBuilder: (BuildContext context, int index) {
                var item = widget.postList[index];
                return ListCard(
                  title: item.title,
                  owner: item.owner,
                  date: item.date,
                  comments: item.comments.length.toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
