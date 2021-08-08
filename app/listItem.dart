import 'package:colorize/colorize.dart';

export 'listItem.dart';

listItem(list) {
  list.forEach((item) => {
        item['isImportant']
            ? color(item['title'], front: Styles.RED)
            : print(item['title'])
      });
}
