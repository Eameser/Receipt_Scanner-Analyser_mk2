// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Load your receipt`
  String get first_pagetext_1 {
    return Intl.message(
      'Load your receipt',
      name: 'first_pagetext_1',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get first_pagetext_2 {
    return Intl.message(
      'Camera',
      name: 'first_pagetext_2',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get first_pagetext_3 {
    return Intl.message(
      'Gallery',
      name: 'first_pagetext_3',
      desc: '',
      args: [],
    );
  }

  /// `SCAN`
  String get first_pagetext_4 {
    return Intl.message(
      'SCAN',
      name: 'first_pagetext_4',
      desc: '',
      args: [],
    );
  }

  /// `Receipt details`
  String get details_pagetext_1 {
    return Intl.message(
      'Receipt details',
      name: 'details_pagetext_1',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get details_pagetext_2 {
    return Intl.message(
      'Tax',
      name: 'details_pagetext_2',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get details_pagetext_3 {
    return Intl.message(
      'Total',
      name: 'details_pagetext_3',
      desc: '',
      args: [],
    );
  }

  /// `Add an item`
  String get details_pagetext_4 {
    return Intl.message(
      'Add an item',
      name: 'details_pagetext_4',
      desc: '',
      args: [],
    );
  }

  /// `Item name`
  String get details_pagetext_5 {
    return Intl.message(
      'Item name',
      name: 'details_pagetext_5',
      desc: '',
      args: [],
    );
  }

  /// `Unit cost`
  String get details_pagetext_6 {
    return Intl.message(
      'Unit cost',
      name: 'details_pagetext_6',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get details_pagetext_7 {
    return Intl.message(
      'Amount',
      name: 'details_pagetext_7',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get details_pagetext_8 {
    return Intl.message(
      'Accept',
      name: 'details_pagetext_8',
      desc: '',
      args: [],
    );
  }

  /// `Receipts library`
  String get second_pagetext_1 {
    return Intl.message(
      'Receipts library',
      name: 'second_pagetext_1',
      desc: '',
      args: [],
    );
  }

  /// `January`
  String get second_pagetext_2 {
    return Intl.message(
      'January',
      name: 'second_pagetext_2',
      desc: '',
      args: [],
    );
  }

  /// `February`
  String get second_pagetext_3 {
    return Intl.message(
      'February',
      name: 'second_pagetext_3',
      desc: '',
      args: [],
    );
  }

  /// `March`
  String get second_pagetext_4 {
    return Intl.message(
      'March',
      name: 'second_pagetext_4',
      desc: '',
      args: [],
    );
  }

  /// `April`
  String get second_pagetext_5 {
    return Intl.message(
      'April',
      name: 'second_pagetext_5',
      desc: '',
      args: [],
    );
  }

  /// `May`
  String get second_pagetext_6 {
    return Intl.message(
      'May',
      name: 'second_pagetext_6',
      desc: '',
      args: [],
    );
  }

  /// `June`
  String get second_pagetext_7 {
    return Intl.message(
      'June',
      name: 'second_pagetext_7',
      desc: '',
      args: [],
    );
  }

  /// `July`
  String get second_pagetext_8 {
    return Intl.message(
      'July',
      name: 'second_pagetext_8',
      desc: '',
      args: [],
    );
  }

  /// `August`
  String get second_pagetext_9 {
    return Intl.message(
      'August',
      name: 'second_pagetext_9',
      desc: '',
      args: [],
    );
  }

  /// `September`
  String get second_pagetext_10 {
    return Intl.message(
      'September',
      name: 'second_pagetext_10',
      desc: '',
      args: [],
    );
  }

  /// `October`
  String get second_pagetext_11 {
    return Intl.message(
      'October',
      name: 'second_pagetext_11',
      desc: '',
      args: [],
    );
  }

  /// `November`
  String get second_pagetext_12 {
    return Intl.message(
      'November',
      name: 'second_pagetext_12',
      desc: '',
      args: [],
    );
  }

  /// `December`
  String get second_pagetext_13 {
    return Intl.message(
      'December',
      name: 'second_pagetext_13',
      desc: '',
      args: [],
    );
  }

  /// `Сonsumption analytics`
  String get third_pagetext_1 {
    return Intl.message(
      'Сonsumption analytics',
      name: 'third_pagetext_1',
      desc: '',
      args: [],
    );
  }

  /// `All time`
  String get third_pagetext_2 {
    return Intl.message(
      'All time',
      name: 'third_pagetext_2',
      desc: '',
      args: [],
    );
  }

  /// `You spent `
  String get third_pagetext_3 {
    return Intl.message(
      'You spent ',
      name: 'third_pagetext_3',
      desc: '',
      args: [],
    );
  }

  /// `You bought `
  String get third_pagetext_4 {
    return Intl.message(
      'You bought ',
      name: 'third_pagetext_4',
      desc: '',
      args: [],
    );
  }

  /// ` items`
  String get third_pagetext_5 {
    return Intl.message(
      ' items',
      name: 'third_pagetext_5',
      desc: '',
      args: [],
    );
  }

  /// `Most expensive item (name): `
  String get third_pagetext_6 {
    return Intl.message(
      'Most expensive item (name): ',
      name: 'third_pagetext_6',
      desc: '',
      args: [],
    );
  }

  /// `Most expensive item (price): `
  String get third_pagetext_7 {
    return Intl.message(
      'Most expensive item (price): ',
      name: 'third_pagetext_7',
      desc: '',
      args: [],
    );
  }

  /// `Favourite product: `
  String get third_pagetext_8 {
    return Intl.message(
      'Favourite product: ',
      name: 'third_pagetext_8',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get fourth_pagetext_1 {
    return Intl.message(
      'Options',
      name: 'fourth_pagetext_1',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get fourth_pagetext_2 {
    return Intl.message(
      'Language',
      name: 'fourth_pagetext_2',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get fourth_pagetext_3 {
    return Intl.message(
      'Theme',
      name: 'fourth_pagetext_3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
