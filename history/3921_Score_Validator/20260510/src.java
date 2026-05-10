class Solution {
  public int[] scoreValidator(String[] events) {
    int[] results = {0, 0};
    for (String e: events) {
      switch(e) {
        case "W":
          results[1]++;
          break;
        case "WD":
        case "NB":
          results[0]++;
          break;
        default:
          results[0] += Integer.parseInt(e);
      }

      if (results[1] == 10)
        break;
    }

    return results;
  }
}
