import 'dart:io' as io;

import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

final botToken = io.Platform.environment['BOT_TOKEN'];

Future<TeleDart> getBot() async {
  if (botToken == null) {
    throw StateError("=== Could not find BOT_TOKEN in ENV ===");
  }

  final botName = (await Telegram(botToken!).getMe()).username;
  final teledart = TeleDart(
    botToken!,
    Event(botName!),
  );
  return teledart;
}

/// Returns a string without the first word, which should be the command.
String getArguments(String message) {
  return message.split(' ').skip(1).join(' ');
}
