void main() {
  print(swapNumber(0)); // Output: 1
  print(swapNumber(1)); // Output: 0
  print(swapNumber(5)); // Output: -1

  print(checkLetters("toosmallword")); // Output: false
  print(checkLetters("abcdefghijklmNOPQRSTUVWXYZ")); // Output: true
  print(
    checkLetters(
      "The quick brown fox jumps over three meter and better than a lazy dog",
    ),
  ); // Output: true

  countLetters("mississippi");
  countLetters("successful");
  countLetters("irresistibility");

  countLettersList("mississippi");
  print("-----");
  countLettersList("successful");
  print("-----");
  countLettersList("irresistibility");
}

//=================== Q1 ===================
int swapNumber(int number) {
  if (number == 0) {
    return 1;
  } else if (number == 1) {
    return 0;
  } else {
    return -1;
  }
}

//=================== Q2 ===================
bool checkLetters(String srt) {
  String text = srt.toLowerCase();

  Set<String> seenLetters = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (char.compareTo('a') >= 0 && char.compareTo('z') <= 0) {
      seenLetters.add(char);
    }
  }
  return seenLetters.length == 26;
}

//=================== Q3 ===================
void countLetters(String str) {
  Map<String, int> map = {};
  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (map.containsKey(char)) {
      map[char] = map[char]! + 1;
    } else {
      map[char] = 1;
    }
  }
  print(map);
}

//=================== Q3.2 ===================
void countLettersList(String str) {
  List list = str.split('').toSet().toList();
  list.sort();
  for (String char in list) {
    int count = 0;
    for (int i = 0; i < str.length; i++) {
      if (str[i] == char) {
        count++;
      }
    }
    print("$char: $count");
  }
}