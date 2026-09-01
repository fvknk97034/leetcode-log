class Solution {
  public int[][] flipAndInvertImage(int[][] image) {
    for (int i = 0; i < image.length; i++)
      image[i] = flipArray(image[i]);

    return image;
  }

  private int[] flipArray(int[] array) {
    for (int i = 0; i < array.length / 2; i++) {
      int tmp = array[i];
      array[i] = array[array.length - 1 - i] ^ 1;
      array[array.length - 1 - i] = tmp ^ 1;
    }

    if (array.length % 2 == 1)
      array[array.length / 2] = array[array.length / 2] ^ 1;

    return array;
  }
}
