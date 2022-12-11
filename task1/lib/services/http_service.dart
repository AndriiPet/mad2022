import 'dart:convert';
import 'package:http/http.dart';
import 'package:task1/data/chapter.dart';

class HttpService {
  static const String url =
      'https://api.quran.com/api/v4/chapters/CHAPTER_NUMBER?language=en';
  static const String tag = 'CHAPTER_NUMBER';

  Future<Chapter> getData(int chapterNumber) async {
    try {
      final response =
          await get(Uri.parse(url.replaceAll(tag, chapterNumber.toString())));
      if (response.statusCode == 200) {
        return Chapter.fromJson(json.decode(response.body));
      } else {
        return Chapter('Error', 'Error');
      }
    } catch (e) {
      return Chapter('Error', 'Error');
    }
  }
}
