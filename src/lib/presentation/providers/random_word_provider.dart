import 'package:english_words/english_words.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wordPairProvider = StateNotifierProvider<WordPairNotifier, WordPair>((ref) {
  return WordPairNotifier();
});

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<WordPair>>((ref) {
  return FavoritesNotifier();
});

class WordPairNotifier extends StateNotifier<WordPair> {
  WordPairNotifier() : super(WordPair.random());

  void getNext() {
    state = WordPair.random();
  }
}

class FavoritesNotifier extends StateNotifier<List<WordPair>> {
  FavoritesNotifier() : super([]);

  void toggleFavorite(WordPair pair) {
    if (state.contains(pair)) {
      state = state.where((element) => element != pair).toList();
    } else {
      state = [...state, pair];
    }
  }
}