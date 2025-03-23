import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seebook/model/post_model.dart';
import 'package:seebook/widget/like_cmt_share.dart';

class DetailScreen extends StatelessWidget {
  final Post post;

  const DetailScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          post.userName,
          style: GoogleFonts.roboto(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(post.userAvatarUrl)),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.userName,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      post.postTime,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(post.postDescription, style: TextStyle(fontSize: 14)),
            SizedBox(height: 10),
            ...post.postImageUrls.map((imageUrl) {
              return Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: size.width
                  ),
                ),
              );
            }),
            Row(
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
            SafeArea(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LikeCmtShare(),
            )),
          ],
        ),
      ),
    );
  }
}
