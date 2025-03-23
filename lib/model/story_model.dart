class Story {
  final String userName;
  final String profileImage;
  final String storyImageUrl;

  Story({
    required this.userName,
    required this.profileImage,
    required this.storyImageUrl,
  });
}

List<Story> stories = [
  Story(
    userName: "Add Your Story",
    profileImage: "assets/images/profilepic.png",
    storyImageUrl: "https://cdn.mos.cms.futurecdn.net/f6oBaDivzHM4yiCrbxFDGK.jpg",
  ),
  Story(
    userName: "Anita Michaels",
    profileImage: "assets/images/profile1.png",
    storyImageUrl: "https://fireart.studio/wp-content/uploads/2019/08/samji_illustrator.jpeg.webp",
  ),
  Story(
    userName: "John Wick",
    profileImage: "assets/images/profile2.png",
    storyImageUrl: "https://mir-s3-cdn-cf.behance.net/project_modules/fs/a643ff79114363.5cb8cf391dff2.png",
  ),
  Story(
    userName: "Mike Johnson",
    profileImage: "assets/images/profile3.png",
    storyImageUrl: "https://99designs-blog.imgix.net/blog/wp-content/uploads/2020/05/Website_illustration_jpg_6PA9rpLF.jpg?auto=format&q=60&w=1280&h=960&fit=crop&crop=faces",
  ),
  Story(
    userName: "Sarah Connor",
    profileImage: "assets/images/profile4.png",
    storyImageUrl: "https://us.123rf.com/450wm/veeksegal/veeksegal1708/veeksegal170800004/84158951-lion-low-poly-face-illustration.jpg?ver=6",
  ),
  Story(
    userName: "Emily Clark",
    profileImage: "assets/images/profile5.png",
    storyImageUrl: "https://miro.medium.com/v2/resize:fit:1400/1*GSreArYdnuJJekBmGkvAPg.jpeg",
  ),
];
