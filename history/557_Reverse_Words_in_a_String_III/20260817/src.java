class Solution {
  public String reverseWords(String s) {
    String[] words = s.split(" ");
    for (int i = 0; i < words.length; i++) {
      StringBuilder sb = new StringBuilder(words[i]);
      words[i] = sb.reverse().toString();
    }


    return String.join(" ", words);
  }
}
