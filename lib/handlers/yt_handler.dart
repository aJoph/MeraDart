import 'package:mera_mera_bot/mera_mera_bot.dart';
import 'package:teledart/model.dart';
import 'package:teledart/telegram.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

final yt = YoutubeExplode().search;
const maxYtResults = 5;

Future<void> handleYt(TeleDartMessage? message) async {
  if (message == null) return;

  final query = getArguments(message.text ?? "");
  if (query.isEmpty) {
    message.reply("Que videos procuras?\n/yt [PESQUISA]");
    return;
  }

  final video = (await yt.search(query)).first;

  final replyString = """(1/maxYtResults)
Da pesquisa:
<i>$query</i>
Eu achei:
<a href="${video.url}">${video.title}</a>
por
<a href="https://www.youtube.com/channel/${video.channelId}">${video.author}</a>
""";

  message.reply(replyString,
      parse_mode: 'HTML', reply_markup: getYtInlineKeyboard(video.url));
}

Future<void> handleYtCallback(TeleDartCallbackQuery? m) async {
  if (m == null) return;

  final lines = m.message?.text?.split("\n");
  if (lines == null) return;

  var nums = int.parse(lines[0][1]);
  if (nums == -1) return;

  if (m.data == "next") {
    if (nums == maxYtResults) {
      nums = 1;
    } else {
      nums++;
    }
  } else if (m.data == "prev") {
    if (nums == 1) {
      nums = maxYtResults;
    } else {
      nums--;
    }
  } else {
    return;
  }

  final video = (await yt.search(lines[2]))[nums];
  final replyString = """($nums/$maxYtResults)
Da pesquisa:
<i>${lines[2]}</i>
Eu achei:
<a href="${video.url}">${video.title}</a>
por
<a href="https://www.youtube.com/channel/${video.channelId}">${video.author}</a>
""";

  Telegram(botToken!).editMessageText(
    replyString,
    parse_mode: 'HTML',
    message_id: m.message!.message_id,
    chat_id: m.message!.chat.id,
    reply_markup: getYtInlineKeyboard(video.url),
  );
}

InlineKeyboardMarkup getYtInlineKeyboard(String videoUrl) {
  return InlineKeyboardMarkup(inline_keyboard: [
    [
      InlineKeyboardButton(text: "<", callback_data: "prev"),
      InlineKeyboardButton(text: "assistir", url: videoUrl),
      InlineKeyboardButton(text: ">", callback_data: "next"),
    ]
  ]);
}
