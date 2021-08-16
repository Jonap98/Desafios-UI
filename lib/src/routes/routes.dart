import 'package:challenges/src/pages/pages.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    // Day 1
    'wallet_page': (BuildContext context) => WalletPage(),
    'bitcoin_page': (BuildContext context) => BitcoinPage(),

    // Day 2
    'initial_page_languages': (BuildContext context) => InitialPageLanguages(),
    'spanish_page': (BuildContext context) => SpanishPage(),
    'conversation_page': (BuildContext context) => ConversationPage(),

    // Day 3
    'selection_page': (BuildContext contet) => SelectionPage(),
    'initial_page': (BuildContext context) => InitialPage(),
    'metro_page': (BuildContext context) => MetroPage(),
    'ticket_page': (BuildContext context) => TicketPage(),

    // Day 4
    'login_page': (BuildContext context) => LoginPage(),
    'general_page': (BuildContext context) => GeneralPage(),
    'activity_page': (BuildContext context) => ActivityPage(),

    // Day 5
    'login_meditate_page': (BuildContext context) => LoginMeditatePage(),
    'initial_meditate_page': (BuildContext context) => InitialMeditatePage(),
    'songs_page': (BuildContext context) => SongsPage(),
  };
}
