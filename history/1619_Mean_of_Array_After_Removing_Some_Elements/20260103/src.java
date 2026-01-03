class Solution {
  public double trimMean(int[] arr) {
    int trimLen = (int)(arr.length * 0.05);

    Arrays.sort(arr);

    double result = 0;
    double len = (double)arr.length - trimLen * 2;
    for (int i = trimLen; i < arr.length - trimLen; i++) {
        result += arr[i] / len;
    }

    return result;
  }
}
