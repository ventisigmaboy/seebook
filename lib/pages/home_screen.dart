import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seebook/model/story_model.dart';
import 'package:seebook/pages/detail_screen.dart';
import 'package:seebook/widget/post_card.dart';
import 'package:seebook/model/post_model.dart';
import 'package:seebook/widget/story_card.dart';
import 'package:seebook/pages/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> items = ['Apple', 'Banana', 'Orange', 'Pineapple'];
  List<String> filteredItems = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredItems = List.from(items);

    searchController.addListener(() {
      filterList();
    });
  }

  void filterList() {
    setState(() {
      filteredItems =
          items
              .where(
                (item) => item.toLowerCase().contains(
                  searchController.text.toLowerCase(),
                ),
              )
              .toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.camera_alt_rounded),
        ),
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset('assets/icons/messenger.png', width: 20),
          ),
        ],
        title: SizedBox(
          height: 35,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            child: TextField(
              cursorHeight: 18,
              controller: searchController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 10,
                ),
                hintText: 'Search',
                fillColor: Colors.grey.shade200,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              style: TextStyle(color: Colors.black, fontSize: 15),
              enabled: false,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Stories',
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Text(
                  'See Archive',
                  style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.keyboard_arrow_right, size: 15),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return StoryCard(
                    story: stories[index],
                    isFirstStory: index == 0,
                  );
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return PostCard(
                  post: post,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(post: post),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 42.0),
        child: IconButton(
          onPressed: () {},
          icon: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
