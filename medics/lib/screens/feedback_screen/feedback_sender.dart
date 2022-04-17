import 'package:http/http.dart' as http;

feedBackBot(String user, String feedback, String userEmail) async {
  const header = <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  String adminId = "1710490620";
  String nullSafetyId = "1028747852";
  String medicsBotToken = "5260840069:AAHg5XJUIWicFQWHS5AeiafHtMv5UZ2vwNA";
  String messageToAdmin =
      "$user with Email id \n$userEmail has provided a feedback about Medics App. \nFeedback: \n$feedback";

  String urlToHit =
      "https://api.telegram.org/bot$medicsBotToken/sendMessage?chat_id=$adminId&parse_mode=Markdown&text=$messageToAdmin";
  String sendToAdmin =
      "https://api.telegram.org/bot$medicsBotToken/sendMessage?chat_id=$nullSafetyId&parse_mode=Markdown&text=$messageToAdmin";
  final response = await http.get(Uri.parse(urlToHit), headers: header);

  await http.get(Uri.parse(sendToAdmin), headers: header);

  return response;
}
