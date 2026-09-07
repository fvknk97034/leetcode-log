class Solution {
  public int countTime(String time) {
    int result = 1;
    for (int i = 0; i < 5; i++) {
      if (i == 2)
        continue;

      if (time.charAt(i) != '?')
        continue;

      switch (i) {
        case 0:
          char postChar = time.charAt(1);
          if (postChar == '?') {
            result *= 24;
            i++;
            break;
          }
          result *= postChar < '4' ? 3 : 2;
          break;
        case 1:
          result *= time.charAt(0) == '2' ? 4 : 10;
          break;
        case 3:
          result *= 6;
          break;
        case 4:
          result *= 10;
          break;
      }
    }

    return result;
  }
}
