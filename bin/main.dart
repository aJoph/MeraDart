import 'dart:async';
import 'dart:io';

import 'package:mera_mera_bot/mera_mera_bot.dart' as mera_bot;
import 'package:mera_mera_bot/handlers.dart';
import 'package:teledart/teledart.dart';

late final TeleDart mera;

Future<void> main(List<String> arguments) async {
  print("Initializing.");
  mera = await mera_bot.getBot();
  final botInfo = await mera.getMe();
  print("${botInfo.id} - ${botInfo.first_name} has started");
  final handlers = Handler(bot: mera);
  print("Setiing up start handler.");
  mera.onCommand('start').listen(handlers.start);

  print("Setiing up yt handler.");
  mera.onCommand('yt').listen(handlers.yt);

  print("Setiing up inspire handler.");
  mera.onCommand('inspire').listen(handlers.inspire);

  print("Setiing up book handler.");
  mera.onCommand('book').listen(handlers.book);

  print("Setiing up 8b handler.");
  mera.onCommand('8b').listen(handlers.magic8b);

  print("Setiing up img handler.");
  mera.onCommand('img').listen(handlers.img);

  print("Setiing up define handler.");
  mera.onCommand('define').listen(handlers.define);

  print("Setiing up spell handler.");
  mera.onCommand('spell').listen(handlers.spell);

  print("Setiing up yt callback handler.");
  mera.onCallbackQuery().listen(handlers.ytCallback);

  print("Starting bot ${botInfo.username}");
  mera.start();

  ProcessSignal.sigint.watch().listen((event) {
    print("Caught termination signal. Exiting.");
    mera.close();
    exit(0);
  });
}
