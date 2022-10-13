import 'package:mera_mera_bot/handlers/define_handler.dart';
import 'package:mera_mera_bot/handlers/img_handler.dart';
import 'package:mera_mera_bot/handlers/magic_8b_handler.dart';
import 'package:mera_mera_bot/handlers/start_handler.dart';
import 'package:mera_mera_bot/handlers/yt_handler.dart';
import 'package:teledart/model.dart';

import 'handlers/book_handler.dart';
import 'handlers/inspire_handler.dart';

void start(TeleDartMessage? m) => handleStart(m);

void yt(TeleDartMessage? m) => handleYt(m);

void ytCallback(TeleDartCallbackQuery? m) => handleYtCallback(m);

void img(TeleDartMessage? m) => handleImg(m);

void define(TeleDartMessage? m) => handleDefine(m);

void magic8b(TeleDartMessage? m) => handle8b(m);

void book(TeleDartMessage? m) => handleBook(m);

void inspire(TeleDartMessage? m) => handleInspire(m);
