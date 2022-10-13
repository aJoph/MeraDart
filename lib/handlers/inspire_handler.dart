import 'dart:convert';

import 'package:mera_mera_bot/models/quote.dart';
import 'package:teledart/model.dart';
import 'package:http/http.dart' as http;
import 'dart:io' as io;

Future<void> handleInspire(TeleDartMessage? message) async {
  if (message == null) return;

  final quote = await QuoteGenerator.instance.getNewQuote();

  final reply = """
"${quote.content}"
- <i>${quote.originator.name}</i>
""";

  message.reply(reply, parse_mode: "HTML");
}

final quotesRapidKey = io.Platform.environment['QUOTES_API'];

class QuoteGenerator {
  QuoteGenerator._internal() {
    if (quotesRapidKey == null) {
      throw StateError("=== QUOTES_API not found in ENV.");
    }
  }
  static final instance = QuoteGenerator._internal();

  int requestCount = 0;

  Future<Quote> getNewQuote() async {
    // There's a limit of 1 request per second.
    await Future.delayed(Duration(seconds: requestCount += 2));

    final req = await http.get(
      Uri(
        scheme: 'https',
        host: 'quotes15.p.rapidapi.com',
        path: '/quotes/random/',
        queryParameters: {'language_code': 'pt'},
      ),
      headers: {
        "X-RapidAPI-Key": quotesRapidKey!,
        "X-RapidAPI-Host": "quotes15.p.rapidapi.com",
      },
    );

    final quote =
        Quote.fromJson(jsonDecode(Utf8Decoder().convert(req.bodyBytes)));

    if (requestCount >= 2) requestCount -= 2;
    return quote;
  }
}
