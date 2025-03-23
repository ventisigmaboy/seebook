class Post {
  final String userName;
  final String userAvatarUrl;
  final String postTime;
  final String postDescription;
  final List<String> postImageUrls;
  final int likes;
  final int comments;

  Post({
    required this.userName,
    required this.userAvatarUrl,
    required this.postTime,
    required this.postDescription,
    required this.postImageUrls,
    required this.likes,
    required this.comments,
  });
}

List<Post> posts = [
  Post(
    userName: 'Jordan Praise',
    userAvatarUrl:
        'https://images.unsplash.com/photo-1633332755192-727a05c4013d?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D',
    postTime: '3 mins ago',
    postDescription: 'updated his cover photo',
    postImageUrls: [
      'https://images.wallpapersden.com/image/download/anonymous-4k-rain-design_bW5la2eUmZqaraWkpJRobWllrWdma2U.jpg',
      'https://www.chromethemer.com/wallpapers/chromebook-wallpapers/images/960/batman-chromebook-wallpaper.jpg',
    ],
    likes: 400,
    comments: 122,
  ),
  Post(
    userName: 'Emily Stone',
    userAvatarUrl:
        'https://media.istockphoto.com/id/1471845315/photo/happy-portrait-or-business-woman-taking-a-selfie-in-office-building-for-a-social-media.jpg?s=612x612&w=0&k=20&c=AOylBL01joI0zphCAFr6YVrsOgp_jd2XtVUychLXYho=',
    postTime: '10 mins ago',
    postDescription: 'shared a new project',
    postImageUrls: [
      'https://cdn.mos.cms.futurecdn.net/f6oBaDivzHM4yiCrbxFDGK.jpg',
      'https://w0.peakpx.com/wallpaper/16/77/HD-wallpaper-beautiful-minimalist-ultra-minimalist.jpg',
    ],
    likes: 250,
    comments: 87,
  ),
  Post(
    userName: 'Michael Johnson',
    userAvatarUrl:
        'https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg',
    postTime: '1 hour ago',
    postDescription: 'posted a new photo',
    postImageUrls: [
      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131',
      'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      'https://careerkarma.com/blog/wp-content/uploads/2021/11/graphic-design-projects.jpeg',
    ],
    likes: 300,
    comments: 150,
  ),
  Post(
    userName: 'Sophia Brown',
    userAvatarUrl:
        'https://www.shutterstock.com/image-photo/need-picture-lady-facebook-profile-600nw-2534800341.jpg',
    postTime: '2 hours ago',
    postDescription: 'updated her profile picture',
    postImageUrls: [
      'https://www.searchenginejournal.com/wp-content/uploads/2023/05/social-media-interaction-646b550019de8-sej.png',
      'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
    ],
    likes: 500,
    comments: 200,
  ),
  Post(
    userName: 'James Smith',
    userAvatarUrl:
        'https://img.freepik.com/free-photo/medium-shot-man-with-afro-hairstyle_23-2150677136.jpg',
    postTime: '3 hours ago',
    postDescription: 'shared a new article',
    postImageUrls: [
      'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      'https://careerkarma.com/blog/wp-content/uploads/2021/11/graphic-design-projects.jpeg',
      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131',
    ],
    likes: 450,
    comments: 180,
  ),
  Post(
    userName: 'Olivia Taylor',
    userAvatarUrl:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80',
    postTime: '5 hours ago',
    postDescription: 'uploaded new photos to her album',
    postImageUrls: [
      'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131',
      'https://careerkarma.com/blog/wp-content/uploads/2021/11/graphic-design-projects.jpeg',
      'https://static.vecteezy.com/system/resources/previews/034/339/375/non_2x/classic-retro-car-template-design-for-poster-flyer-or-banner-illustration-car2retro-vector.jpg',
    ],
    likes: 600,
    comments: 250,
  ),
];