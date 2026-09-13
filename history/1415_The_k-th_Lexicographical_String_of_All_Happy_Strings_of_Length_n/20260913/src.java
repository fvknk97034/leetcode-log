class Solution {
  public String getHappyString(int n, int k) {
    int len = (int)Math.pow(2, n - 1) * 3;
    if (k > len)
      return "";

    if (n == 1)
      return Character.toString((char)('a' + (k - 1)));

    int count = 0;
    Deque<StringBuilder> queue = new ArrayDeque<>();
    queue.add(new StringBuilder("a"));
    queue.add(new StringBuilder("b"));
    queue.add(new StringBuilder("c"));

    while (!queue.isEmpty()) {
      StringBuilder current = queue.poll();
      int sbLength = current.length();
      boolean isContinue = sbLength != n - 1;

      StringBuilder[] sbs = addChar(current);
      if (isContinue) {
        queue.addFirst(sbs[0]);
        queue.addFirst(sbs[1]);
      } else {
        count++;
        if (count == k)
          return sbs[1].toString();
        count++;
        if (count == k)
          return sbs[0].toString();
      }
    }

    return "";
  }

  private StringBuilder[] addChar(StringBuilder sb) {
    StringBuilder[] results = new StringBuilder[2];
    int len = sb.length();
    switch(sb.charAt(len - 1)) {
      case 'a':
        sb.appendCodePoint('c');
        results[0] = new StringBuilder(sb);
        sb.deleteCharAt(len);

        sb.appendCodePoint('b');
        results[1] = new StringBuilder(sb);
        sb.deleteCharAt(len);
        break;
      case 'b':
        sb.appendCodePoint('c');
        results[0] = new StringBuilder(sb);
        sb.deleteCharAt(len);

        sb.appendCodePoint('a');
        results[1] = new StringBuilder(sb);
        sb.deleteCharAt(len);
        break;
      case 'c':
        sb.appendCodePoint('b');
        results[0] = new StringBuilder(sb);
        sb.deleteCharAt(len);

        sb.appendCodePoint('a');
        results[1] = new StringBuilder(sb);
        sb.deleteCharAt(len);
        break;
    }

    return results;
  }
}
