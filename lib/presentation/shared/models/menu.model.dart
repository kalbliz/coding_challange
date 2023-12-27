class MenuModel {
  final String title;
  final String subTitle;
  void Function()? onTap;
  MenuModel({
    required this.title,
    required this.subTitle,
    this.onTap,
  });
}
