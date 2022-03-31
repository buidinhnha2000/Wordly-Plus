import 'package:wordly/bloc/main/main_cubit.dart';
import 'package:wordly/data/models/dictionary_languages.dart';
import 'package:wordly/data/models/keyboard_keys.dart';
import 'package:wordly/data/models/letter_entering.dart';
import 'package:wordly/data/models/letter_status.dart';

abstract class DictionaryRepository {
  String get secretWord;

  String get secretWordMeaning;

  int get currentAttempt;

  String get getEmojiString;

  set dictionaryLanguage(DictionaryLanguages language);

  String createSecretWord();

  bool setLetter(final KeyboardKeys key);

  void removeLetter();

  void resetData();

  MainState? completeWord();

  LetterStatus getKeyStatus(String? keyName);

  LetterEntering getLetterStatusByIndex(final int index);

  Map<int, String> getAllLettersInList();

  void getBoard();

  void saveBoard();
}
