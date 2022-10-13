import 'dart:convert';

import 'package:mera_mera_bot/mera_mera_bot.dart';
import 'package:mera_mera_bot/models/dict_result.dart';
import 'package:teledart/model.dart';
import 'package:http/http.dart' as http;

Future<void> handleDefine(TeleDartMessage? message) async {
  if (message == null) return;

  final query = getArguments(message.text!);
  if (query.isEmpty) {
    message.reply("O que quer que eu defina?\n/define [palavra]");

    return;
  }

  final uri = Uri.parse(
    "https://api.dictionaryapi.dev/api/v2/entries/en/$query",
  );
  final res = await http.get(uri);
  if (res.statusCode == 404) {
    message.reply("Não foi possível achar a palavra.");
    return;
  }

  final json = List<Map<String, Object?>>.from(jsonDecode(res.body));

  final definition = DictResult.fromJson(json.first);

  message.reply("""<b>${definition.word}</b>
<i>${definition.meanings[0].partOfSpeech}</i>
${definition.meanings[0].definitions[0].definition}
${definition.meanings[0].definitions[0].example ?? "No examples found."}
""", parse_mode: 'HTML');
}
