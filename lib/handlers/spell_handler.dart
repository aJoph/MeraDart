import 'package:mera_mera_bot/mera_mera_bot.dart';
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';

const letterToGif = <String, String>{
  "a":
      "https://tenor.com/view/capital-letter-dancing-letter-letter-letter-a-gif-15823932",
  "b":
      "https://tenor.com/view/dancing-letter-letter-b-capital-letter-letter-gif-15823894",
  "c":
      "https://tenor.com/view/dancing-letter-letter-c-capital-letter-letter-gif-15823895",
  "d":
      "https://tenor.com/view/dancing-letter-letter-d-capital-letter-letter-gif-15823896",
  "e":
      "https://tenor.com/view/dancing-letter-letter-e-capital-letter-letter-gif-15823897",
  "f":
      "https://tenor.com/view/letter-f-f-dancing-f-alphabet-red-f-gif-15686813",
  "g":
      "https://tenor.com/view/dancing-letter-letter-g-capital-letter-letter-gif-15823889",
  "h": "https://tenor.com/view/letter-h-dance-dance-move-gif-15166657",
  "i":
      "https://tenor.com/view/dancing-letter-letter-i-capital-letter-letter-gif-15823891",
  "j":
      "https://tenor.com/view/dancing-letter-letter-j-capital-letter-letter-gif-15823892",
  "k":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-k-dance-gif-15823905",
  "l":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-l-dance-gif-15823906",
  "m":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-m-dance-gif-15823907",
  "n":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-n-dance-gif-15823908",
  "o":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-o-dance-gif-15823909",
  "p":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-p-dance-gif-15823911",
  "q":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-q-dance-gif-15823912",
  "r":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-r-dance-gif-15823902",
  "s":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-s-dance-gif-15823903",
  "t":
      "https://tenor.com/view/dancing-letter-letter-capital-letter-letter-t-dance-gif-15823904",
  "u":
      "https://tenor.com/view/capital-letter-letter-dancing-letter-letter-u-dance-gif-15823918",
  "v":
      "https://tenor.com/view/capital-letter-letter-dancing-letter-letter-v-dance-gif-15823919",
  "w":
      "https://tenor.com/view/capital-letter-letter-dancing-letter-letter-w-dance-gif-15823920",
  "x":
      "https://tenor.com/view/capital-letter-dancing-letter-letter-letter-x-dance-gif-15823915",
  "y":
      "https://tenor.com/view/capital-letter-letter-dancing-letter-letter-y-dance-gif-15823916",
  "z":
      "https://tenor.com/view/capital-letter-letter-dancing-letter-letter-z-dance-gif-15823917",
  " ": "https://tenor.com/view/blank-welcome-gif-19563987"
};

Future<void> handleSpell(TeleDartMessage? message, TeleDart bot) async {
  if (message == null || message.text == null) return;
  var whatUserSaid = getArguments(message.text ?? "");

  var gifs =
      whatUserSaid.toLowerCase().split('').map((e) => letterToGif[e] ?? "");
  for (var gif in gifs) {
    if (gif.isEmpty) continue;
    await Future.delayed(const Duration(milliseconds: 500));
    bot.sendAnimation(message.chat.id, gif);
  }
}
