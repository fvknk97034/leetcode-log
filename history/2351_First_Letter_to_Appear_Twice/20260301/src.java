class Solution {
  public char repeatedCharacter(String s) {
    Set<Character> charSet = new HashSet<>();
    for (char c: s.toCharArray()) {
      if (!charSet.add(c)) return c;
    }

    throw new RuntimeException("invalid result");
  }
}
