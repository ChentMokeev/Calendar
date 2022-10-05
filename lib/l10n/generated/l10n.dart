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

class L10n {
  L10n();

  static L10n? _current;

  static L10n get current {
    assert(_current != null,
        'No instance of L10n was loaded. Try to initialize the L10n delegate before accessing L10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<L10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = L10n();
      L10n._current = instance;

      return instance;
    });
  }

  static L10n of(BuildContext context) {
    final instance = L10n.maybeOf(context);
    assert(instance != null,
        'No instance of L10n present in the widget tree. Did you add L10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static L10n? maybeOf(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  /// `Новое событие`
  String get newMeeting {
    return Intl.message(
      'Новое событие',
      name: 'newMeeting',
      desc: '',
      args: [],
    );
  }

  /// `Календарь`
  String get calendar {
    return Intl.message(
      'Календарь',
      name: 'calendar',
      desc: '',
      args: [],
    );
  }

  /// `Сообщения`
  String get messages {
    return Intl.message(
      'Сообщения',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Логин`
  String get login {
    return Intl.message(
      'Логин',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `ФИО`
  String get name {
    return Intl.message(
      'ФИО',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Отдел`
  String get department {
    return Intl.message(
      'Отдел',
      name: 'department',
      desc: '',
      args: [],
    );
  }

  /// `Должность`
  String get position {
    return Intl.message(
      'Должность',
      name: 'position',
      desc: '',
      args: [],
    );
  }

  /// `Почта`
  String get email {
    return Intl.message(
      'Почта',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Добавить\nфото`
  String get selectPhoto {
    return Intl.message(
      'Добавить\nфото',
      name: 'selectPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Вход`
  String get enter {
    return Intl.message(
      'Вход',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get signIn {
    return Intl.message(
      'Войти',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Регистрация`
  String get signUp {
    return Intl.message(
      'Регистрация',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Неправильно ввели данные`
  String get invalidData {
    return Intl.message(
      'Неправильно ввели данные',
      name: 'invalidData',
      desc: '',
      args: [],
    );
  }

  /// `У Вас нет аккаунта?`
  String get haveNoAcc {
    return Intl.message(
      'У Вас нет аккаунта?',
      name: 'haveNoAcc',
      desc: '',
      args: [],
    );
  }

  /// `У Вас уже есть аккаунт?`
  String get haveAcc {
    return Intl.message(
      'У Вас уже есть аккаунт?',
      name: 'haveAcc',
      desc: '',
      args: [],
    );
  }

  /// `Сегодня`
  String get today {
    return Intl.message(
      'Сегодня',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Конф. зал`
  String get confHall {
    return Intl.message(
      'Конф. зал',
      name: 'confHall',
      desc: '',
      args: [],
    );
  }

  /// `Повторять`
  String get repeating {
    return Intl.message(
      'Повторять',
      name: 'repeating',
      desc: '',
      args: [],
    );
  }

  /// `Приватность`
  String get privacy {
    return Intl.message(
      'Приватность',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Мои метки`
  String get myMarks {
    return Intl.message(
      'Мои метки',
      name: 'myMarks',
      desc: '',
      args: [],
    );
  }

  /// `Участники`
  String get members {
    return Intl.message(
      'Участники',
      name: 'members',
      desc: '',
      args: [],
    );
  }

  /// `Помещение`
  String get location {
    return Intl.message(
      'Помещение',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Название`
  String get nameing {
    return Intl.message(
      'Название',
      name: 'nameing',
      desc: '',
      args: [],
    );
  }

  /// `Сотрудник`
  String get employee {
    return Intl.message(
      'Сотрудник',
      name: 'employee',
      desc: '',
      args: [],
    );
  }

  /// `Входящие`
  String get incoming {
    return Intl.message(
      'Входящие',
      name: 'incoming',
      desc: '',
      args: [],
    );
  }

  /// `Отправленные`
  String get sent {
    return Intl.message(
      'Отправленные',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Дата и время`
  String get dateAndTime {
    return Intl.message(
      'Дата и время',
      name: 'dateAndTime',
      desc: '',
      args: [],
    );
  }

  /// `Время встречи`
  String get meetingTime {
    return Intl.message(
      'Время встречи',
      name: 'meetingTime',
      desc: '',
      args: [],
    );
  }

  /// `Место встречи`
  String get meetingPlace {
    return Intl.message(
      'Место встречи',
      name: 'meetingPlace',
      desc: '',
      args: [],
    );
  }

  /// `Отправитель`
  String get sender {
    return Intl.message(
      'Отправитель',
      name: 'sender',
      desc: '',
      args: [],
    );
  }

  /// `Повтор`
  String get repeat {
    return Intl.message(
      'Повтор',
      name: 'repeat',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status {
    return Intl.message(
      'Статус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Метки`
  String get marks {
    return Intl.message(
      'Метки',
      name: 'marks',
      desc: '',
      args: [],
    );
  }

  /// `Ответ на приглашение`
  String get answerToInvite {
    return Intl.message(
      'Ответ на приглашение',
      name: 'answerToInvite',
      desc: '',
      args: [],
    );
  }

  /// `Принять`
  String get accept {
    return Intl.message(
      'Принять',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Делегировать`
  String get delegating {
    return Intl.message(
      'Делегировать',
      name: 'delegating',
      desc: '',
      args: [],
    );
  }

  /// `Отклонить`
  String get decline {
    return Intl.message(
      'Отклонить',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Принят`
  String get accepted {
    return Intl.message(
      'Принят',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `Делегированн`
  String get delegated {
    return Intl.message(
      'Делегированн',
      name: 'delegated',
      desc: '',
      args: [],
    );
  }

  /// `Изменить профиль`
  String get changeProfile {
    return Intl.message(
      'Изменить профиль',
      name: 'changeProfile',
      desc: '',
      args: [],
    );
  }

  /// `Новый пароль`
  String get newPassword {
    return Intl.message(
      'Новый пароль',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Создание метки`
  String get markCreation {
    return Intl.message(
      'Создание метки',
      name: 'markCreation',
      desc: '',
      args: [],
    );
  }

  /// `Цвет`
  String get color {
    return Intl.message(
      'Цвет',
      name: 'color',
      desc: '',
      args: [],
    );
  }

  /// `Рабочий`
  String get work {
    return Intl.message(
      'Рабочий',
      name: 'work',
      desc: '',
      args: [],
    );
  }

  /// `Личный`
  String get personal {
    return Intl.message(
      'Личный',
      name: 'personal',
      desc: '',
      args: [],
    );
  }

  /// `Мероприятия`
  String get event {
    return Intl.message(
      'Мероприятия',
      name: 'event',
      desc: '',
      args: [],
    );
  }

  /// `Проекты`
  String get project {
    return Intl.message(
      'Проекты',
      name: 'project',
      desc: '',
      args: [],
    );
  }

  /// `Никогда`
  String get never {
    return Intl.message(
      'Никогда',
      name: 'never',
      desc: '',
      args: [],
    );
  }

  /// `Ежедневно`
  String get dayly {
    return Intl.message(
      'Ежедневно',
      name: 'dayly',
      desc: '',
      args: [],
    );
  }

  /// `По будням`
  String get onWeekdays {
    return Intl.message(
      'По будням',
      name: 'onWeekdays',
      desc: '',
      args: [],
    );
  }

  /// `Еженедельно`
  String get weekly {
    return Intl.message(
      'Еженедельно',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Ежемесячно`
  String get monthly {
    return Intl.message(
      'Ежемесячно',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Ежегодно`
  String get annually {
    return Intl.message(
      'Ежегодно',
      name: 'annually',
      desc: '',
      args: [],
    );
  }

  /// `Доступно всем`
  String get avalable {
    return Intl.message(
      'Доступно всем',
      name: 'avalable',
      desc: '',
      args: [],
    );
  }

  /// `Скрыть от всех`
  String get hide {
    return Intl.message(
      'Скрыть от всех',
      name: 'hide',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<L10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<L10n> load(Locale locale) => L10n.load(locale);
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
