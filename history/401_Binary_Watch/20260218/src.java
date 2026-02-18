class Solution {
  public List<String> readBinaryWatch(int turnedOn) {
    if (turnedOn > 8) return new ArrayList<String>();

    int[] hours = {1, 2, 4, 8};
    int[] minutes = {1, 2, 4, 8, 16, 32};
    int maxHourTurnOn = Math.min(3, turnedOn);

    List<String> results = new ArrayList<String>();
    for (int hourTurnOn = 0; hourTurnOn <= maxHourTurnOn; hourTurnOn++) {
      if (turnedOn - hourTurnOn > 5) continue;

      List<Integer> validHours = new ArrayList<>();
      validCombinationSums(hours, 0, hourTurnOn, new ArrayList<>(), validHours, 12);

      List<Integer> validMinutes = new ArrayList<>();
      validCombinationSums(minutes, 0, turnedOn - hourTurnOn, new ArrayList<>(), validMinutes, 60);

      for (int hour: validHours) {
        for (int minute: validMinutes) {
          String minuteResult = minute < 10 ? "0" + minute : "" + Integer.toString(minute);
          results.add(hour + ":" + minuteResult);
        }
      }
    }

    return results;
  }

  private void validCombinationSums(int[] array, int start, int size, List<Integer> current, List<Integer> result, int limit){
    int sum = current.stream().reduce(0, Integer::sum);
    if (sum >= limit) return;

    if (current.size() == size) {
      result.add(sum);
      return;
    }

    for (int i = start; i < array.length; i++) {
      current.add(array[i]);
      validCombinationSums(array, i + 1, size, current, result, limit);
      current.remove(current.size() - 1);
    }
  }
}
