class Solution {
  public int daysBetweenDates(String date1, String date2) {
    return Math.abs(convertStringDateToEpochDay(date1) - convertStringDateToEpochDay(date2));
  }

  private int convertStringDateToEpochDay(String date) {
    String[] splitDate = date.split("-");
    int currentYear = Integer.parseInt(splitDate[0]);

    int result = Integer.parseInt(splitDate[2]);
    for (int year = 1970; year < currentYear; year++) {
      result += isLeapYear(year) ? 366 : 365;
    }

    int[] monthDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    if (isLeapYear(currentYear)) monthDays[1] = 29;

    int currentMonth = Integer.parseInt(splitDate[1]);
    for (int month = 0; month < currentMonth - 1; month++) {
      result += monthDays[month];
    }

    return result;
  }

  private boolean isLeapYear(int year) {
    return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  }
}
