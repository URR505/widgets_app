import 'package:english_words/english_words.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/infrastucture/datasources/favorite_words_database.dart';

final wordPairProvider =
    StateNotifierProvider<WordPairNotifier, WordPair>((ref) {
  return WordPairNotifier();
});

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<WordPair>>((ref) {
  return FavoritesNotifier();
});

class WordPairNotifier extends StateNotifier<WordPair> {
  WordPairNotifier() : super(WordPair.random());

  void getNext() {
    state = WordPair.random();
  }
}

class FavoritesNotifier extends StateNotifier<List<WordPair>> {
  FavoritesNotifier() : super([]) {
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final favorites = await FavoriteWordsDatabase.instance.getFavorites();
    state = favorites;
  }

  Future<void> toggleFavorite(WordPair pair) async {
    final isFavorite = await FavoriteWordsDatabase.instance.isFavorite(pair);

    if (isFavorite) {
      await FavoriteWordsDatabase.instance.deleteFavorite(pair);
      state = state.where((element) => element != pair).toList();
    } else {
      await FavoriteWordsDatabase.instance.insertFavorite(pair);
      state = [...state, pair];
    }
  }
}
