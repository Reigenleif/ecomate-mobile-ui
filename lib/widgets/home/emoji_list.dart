import 'package:flutter/material.dart';
import 'package:namer_app/widgets/common/clickable_card.dart';
import 'package:namer_app/widgets/common/flex_display.dart';

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

class EmojiList extends StatefulWidget {
  const EmojiList({
    super.key,
  });

  @override
  createState() => EmojiListState();
}

class EmojiListState extends State<EmojiList> {
  String _emoji = "";

  void onSelectEmoji(String emoji) {
    setState(() {
      _emoji = emoji;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Emoji Selected : $_emoji'), centerTitle: true),
      body: Container(
          padding: const EdgeInsets.all(18),
          child: FlexDisplay(children: [
            for (var i = 0; i < emojiList.length; i++)
              ClickableCard(
                  child: Center(
                      child: Column(children: [
                    Text(emojiList[i][0], style: TextStyle(fontSize: 30)),
                    Text(emojiList[i][1])
                  ])),
                  onPressed: () => onSelectEmoji(emojiList[i][0]))
          ])),
    );
  }
}
