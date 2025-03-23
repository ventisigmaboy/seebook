import 'package:flutter/material.dart';
import 'package:seebook/widget/like_cmt_share.dart';
import 'model/post_model.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final void Function()? onTap;

  const PostCard({super.key, required this.post, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(post.userAvatarUrl),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.userName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${post.postDescription}\n${post.postTime}",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz, color: Colors.grey),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Image.network(post.postImageUrls[0], fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/facebook-reactions.png',
                        width: 18,
                      ),
                      SizedBox(width: 5),
                      Text(post.likes.toString()),
                    ],
                  ),
                  Text(
                    "${post.comments} Comments",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0, top: 2.0),
              child: Divider(thickness: 0.6),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: LikeCmtShare(),
            ),
          ],
        ),
      ),
    );
  }
}


