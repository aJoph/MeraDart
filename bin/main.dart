import 'package:mera_mera_bot/mera_mera_bot.dart' as mera_bot;
import 'package:mera_mera_bot/handlers.dart' as handlers;

Future<void> main(List<String> arguments) async {
  print("Initializing.");
  final mera = await mera_bot.getBot();
  mera.onCommand('start').listen(handlers.start);
  mera.onCommand('yt').listen(handlers.yt);
  mera.onCommand('inspire').listen(handlers.inspire);
  mera.onCommand('book').listen(handlers.book);
  mera.onCommand('8b').listen(handlers.magic8b);
  mera.onCommand('img').listen(handlers.img);
  mera.onCommand('define').listen(handlers.define);
  mera.onCallbackQuery().listen(handlers.ytCallback);

  print("Starting bot ${(await mera.getMe()).username}");
  mera.start();
}
