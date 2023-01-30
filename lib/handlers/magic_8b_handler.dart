// ignore_for_file: unnecessary_string_escapes

import 'dart:math';

import 'package:mera_mera_bot/mera_mera_bot.dart';
import 'package:teledart/model.dart';

const possibleAnswers = <String>[
  // Maybe\.
  "Quem sabe?\nEu não.",
  "Talvez amanhã.",
  "Pergunte novamente depois.",
  "Melhor não te falar agora.",
  "Talvez",
  "Não acho.",
  "Improvavel.",
  "Resposta nebulosa. Tente novamente.",
  "Não me pergunte isso.",
  "Bem, sim, mas também não.",
  // Positive\.
  "Aye, aye, sir.",
  "É certo.",
  "O Papá é católico?",
  "Pelo que vejo, sim.",
  "Pode confiar.",
  "Concerteza.",
  "Creio que sim.",
  "Sem dúvidas.",
  "Penso que só penso que sim.",
  "Se alguém perguntar\.\.\. eu nunca te falei que: Sim.",
  // Negative\.
  "Nay, woh\!",
  "Eu digo não.",
  "Boa pergunta\. Mas não.",
  "É incrivel que você sentiu a necessidade de perguntar isso\. A resposta é não.",
  "Não conte com isso.",
  "Duvidoso.",
  "Calculo nulo.",
  "A resposta é não.",
  "Claro\.\nque não.",
  "Sem chance.",
];

void handle8b(TeleDartMessage? message) {
  if (message == null) return;

  var whatUserSaid = getArguments(message.text ?? "");
  if (whatUserSaid.isNotEmpty) {
  } else if (message.reply_to_message != null) {
    whatUserSaid = message.reply_to_message!.text!;
  } else {
    message.reply(
      "Quer que eu adivinhe o que tu quer que eu adivinhe? Que cansativo.\nUse /8b [TEXTO]",
    );
    return;
  }

  final reply = """
<em><strong>$whatUserSaid</strong></em>
${possibleAnswers.getRandom()}
  """;
  message.reply(reply, parse_mode: 'HTML');
}

extension ListRandom<T> on List<T> {
  T getRandom() {
    final i = Random(DateTime.now().millisecondsSinceEpoch).nextInt(length);
    return this[i];
  }
}
