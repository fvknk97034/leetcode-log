class Solution {
  public boolean repeatedSubstringPattern(String s) {
    int len = s.length();
    int subLen = 0;
    StringBuilder sb = new StringBuilder();
    while (subLen < len / 2) {
      sb.append(s.charAt(subLen));
      subLen++;

      if (len % subLen != 0)
        continue;

      if (s.equals(sb.toString().repeat(len / subLen)))
        return true;
    }

    return false;
  }
}
