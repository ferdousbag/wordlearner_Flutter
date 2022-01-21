import 'package:english_words/english_words.dart';

newwordgenerator() {
  final newword = WordPair.random();
  return newword.asPascalCase;
}
