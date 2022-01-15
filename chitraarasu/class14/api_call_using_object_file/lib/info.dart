class Info {
  String? image;
  List<String>? info;
  Info({this.image, this.info});

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        image: json["image"] as String,
        info: List<String>.from(json["info"]),
      );
}
