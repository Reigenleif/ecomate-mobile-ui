const List<List<String>> emojiList = [
  ["😀", "Happy"],
  ["😂", "Laughing"],
  ["😍", "Heart Eyes"],
  ["😭", "Crying"],
  ["😊", "Blushing"],
  ["😏", "Smirking"],
  ["😁", "Grinning"],
  ["😉", "Winking"],
  ["😎", "Sunglasses"],
  ["😤", "Angry"],
  ["😡", "Angry"],
  ["😬", "Grimacing"],
  ["😪", "Sleepy"],
  ["😷", "Mask"],
  ["😵", "Dizzy"],
  ["😱", "Screaming"],
  ["😈", "Smiling"],
  ["🙊", "Spea"],
];

class EmojiListService {
  late List<List<String>> data;

  bool isError = false;
  String errorMessage = '';
  bool isLoading = false;

  EmojiListService() {
    data = emojiList;
  }

  static List<List<String>> refetch() {
    return emojiList;
  }
}
