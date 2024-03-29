import 'package:mera_mera_bot/mera_mera_bot.dart';
import 'package:teledart/model.dart';
import 'package:teledart/telegram.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart' as yt;

final _yt = yt.YoutubeExplode().search;
const maxYtResults = 20;

final cachedQueries = <String, List<yt.Video>>{};

Future<void> handleYt(TeleDartMessage? message) async {
  if (message == null) return;

  final query = getArguments(message.text ?? "");
  if (query.isEmpty) {
    message.reply("Que videos procuras?\n/yt [PESQUISA]");
    return;
  }

  yt.Video video;
  if (!cachedQueries.containsKey(query)) {
    await getVidTemporarily(query);
  }

  if (cachedQueries[query] == null || cachedQueries[query]!.isEmpty) {
    message.reply("Não achei nenhum video com essa pesquisa.");
    return;
  }

  video = cachedQueries[query]!.first;

  final replyString = """(01/$maxYtResults)
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

/// Searches youtube for [query] and populates [cachedQueries] with the result tied to the query.
Future<void> getVidTemporarily(String query) async {
  cachedQueries[query] = await _yt.search(query);
  Future.delayed(const Duration(minutes: 5))
      .whenComplete(() => cachedQueries.remove(query));
}

Future<void> handleYtCallback(TeleDartCallbackQuery? m) async {
  if (m == null) return;
  final lines = m.message?.text?.split("\n"); // Getting each line so that we...
  if (lines == null) return;

  var nums = int.tryParse(lines[0].substring(1, 3)) ??
      -1; // Can get where we are in the list.
  if (nums == -1) return;
  nums--; // list[0] would display as (01/20) for example

  if (m.data == "next") {
    if (nums == maxYtResults - 1) nums = -1; // wrap around.
    nums++;
  } else if (m.data == "prev") {
    if (nums == 0) nums = maxYtResults; // wrap around.
    nums--;
  } else {
    // If it's not next or prev, there's nothing to do.
    return;
  }

  var query = lines[2];
  if (!cachedQueries.containsKey(query)) await getVidTemporarily(query);
  final video = cachedQueries[query]?[nums];
  if (video == null) return;

  final replyString = """(${(nums + 1).toFormattedString()}/$maxYtResults)
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

extension IntFormat on int {
  String toFormattedString() {
    if (this < 10) {
      return "0$this";
    } else {
      return toString();
    }
  }
}
