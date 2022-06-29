import 'package:http/http.dart' as http;

class FeedbackData {
  static Future<bool> addFeedBack(String mail, String description) async {
    mail = mail.replaceAll('.com', '');
    var url = Uri.https(
        'feedbackapi-6379b-default-rtdb.firebaseio.com', '/feedback.json');
    var response = await http.patch(url, body: '{\"$mail\":\"$description\"}');
    if (response.statusCode != 200) return Future.value(false);
    return Future.value(true);
  }
}
