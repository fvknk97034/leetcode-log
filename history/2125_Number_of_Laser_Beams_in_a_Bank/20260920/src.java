class Solution {
  public int numberOfBeams(String[] bank) {
    int preCount = 0;
    int result = 0;
    for (int i = 0; i < bank.length; i++) {
      int count = 0;
      for (int j = 0; j < bank[i].length(); j++)
        count += bank[i].charAt(j) - '0';

      result += preCount * count;
      preCount = count == 0 ? preCount : count;
    }

    return result;
  }
}
