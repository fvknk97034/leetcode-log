class Solution {
  public String removeStars(String s) {
    Deque<Character> chars = new ArrayDeque<>();
    for (char c: s.toCharArray()) {
      if (c == '*') {
        chars.pop();
        continue;
      }

      chars.push(c);
    }

    StringBuilder sb = new StringBuilder();
    while (!chars.isEmpty()) {
      sb.append(chars.pollLast());
    }

    return sb.toString();
  }
}
