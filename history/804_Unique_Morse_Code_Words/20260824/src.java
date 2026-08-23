class Solution {
  public int uniqueMorseRepresentations(String[] words) {
    String[] codes = {
      ".-",
      "-...",
      "-.-.",
      "-..",
      ".",
      "..-.",
      "--.",
      "....",
      "..",
      ".---",
      "-.-",
      ".-..",
      "--",
      "-.",
      "---",
      ".--.",
      "--.-",
      ".-.",
      "...",
      "-",
      "..-",
      "...-",
      ".--",
      "-..-",
      "-.--",
      "--.."
    };

    Set<String> transformedWords = new HashSet<>();
    for (String word: words) {
      StringBuilder sb = new StringBuilder();
      for (char c: word.toCharArray()) {
        sb.append(codes[c - 'a']);
      }
      transformedWords.add(sb.toString());
    }

    return transformedWords.size();
  }
}
