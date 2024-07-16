import 'package:flutter/material.dart';

import 'post_model.dart';

class PostScreen extends StatelessWidget {
  static const String routeName = 'post';
  final List<Model> posts = List.generate(
    100,
    (index) => Model(
      name: 'owner ${index + 1}',
      content: ' the post num  ${index + 1}',
      time: ' ${index + 1}h',
      avatar: 'assets/images/facebookStory.jpg',
      like: 'assets/images/like.jpg',
      comment: 'assets/images/comment.jpg',
      share: 'assets/images/share.png',
      singleLike: 'assets/images/singleLike.jpg',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => PostWidget(
        name: posts[index].name,
        content: posts[index].content,
        time: posts[index].time,
        avatar: posts[index].avatar,
        like: posts[index].like,
        comment: posts[index].comment,
        share: posts[index].share,
        singleLike: posts[index].singleLike,
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String name;
  final String content;
  final String time;
  final String avatar;
  final String like;
  final String comment;
  final String share;
  final String singleLike;

  PostWidget({
    required this.name,
    required this.content,
    required this.time,
    required this.avatar,
    required this.like,
    required this.comment,
    required this.share,
    required this.singleLike,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(avatar),
            ),
            title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Row(
              children: [
                Text(time),
                Icon(
                  Icons.public,
                  size: 16,
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content, style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        width: 30,
                        child:
                            Image(image: AssetImage('assets/images/like.jpg'))),
                    Text(' 100'),
                  ],
                ),
                Text('100 comment'),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 20,
                  child:
                      Image(image: AssetImage('assets/images/singleLike.jpg')),
                ),
                Container(child: Text('like')),
                Container(
                  height: 20,
                  child: Image(image: AssetImage('assets/images/comment.jpg')),
                ),
                Container(child: Text('comment')),
                Container(
                  height: 20,
                  child: Image(image: AssetImage('assets/images/share.png')),
                ),
                Container(child: Text('share')),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
