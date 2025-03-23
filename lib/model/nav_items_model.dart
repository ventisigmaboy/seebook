class NavItemsModel {
  final String title;
  final String iconPath;

  NavItemsModel({required this.iconPath, required this.title});
}

List<NavItemsModel> bottomNavItems = [
  NavItemsModel(iconPath: 'assets/icons/home.png', title: 'Home'),
  NavItemsModel(iconPath: 'assets/icons/video.png', title: 'Video'),
  NavItemsModel(iconPath: 'assets/icons/friends.png', title: 'Friends'),
  NavItemsModel(iconPath: 'assets/icons/noti.png', title: 'Notification'),
  NavItemsModel(iconPath: 'assets/icons/profile.png', title: 'Profile'),
];

List<NavItemsModel> bottomNavItemsSelected = [
  NavItemsModel(iconPath: 'assets/icons/home_sl.png', title: 'Home'),
  NavItemsModel(iconPath: 'assets/icons/video_sl.png', title: 'Video'),
  NavItemsModel(iconPath: 'assets/icons/friends_sl.png', title: 'Friends'),
  NavItemsModel(iconPath: 'assets/icons/noti_sl.png', title: 'Notification'),
  NavItemsModel(iconPath: 'assets/icons/profile_sl.png', title: 'Profile'),
];

