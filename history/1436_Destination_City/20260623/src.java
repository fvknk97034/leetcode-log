class Solution {
  public String destCity(List<List<String>> paths) {
    List<String> cities = new ArrayList<>();
    for (List<String> path: paths)
      cities.add(path.get(1));

    for (List<String> path: paths)
      cities.remove(path.get(0));

    return cities.get(0);
  }
}
