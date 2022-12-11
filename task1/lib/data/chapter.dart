class Chapter {
  final String nameComplex, nameArabic;
  Chapter(this.nameComplex, this.nameArabic);

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
        json['chapter']['name_complex'], json['chapter']['name_arabic']);
  }
}
