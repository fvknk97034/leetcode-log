class Solution {
  public List<String> removeSubfolders(String[] folder) {
    Arrays.sort(folder);

    List<String> results = new ArrayList<String>();
    results.add(folder[0]);

    String parentFolder = folder[0] + "/";
    for (int i = 1; i < folder.length; i++) {
      if (folder[i].startsWith(parentFolder))
        continue;

      results.add(folder[i]);
      parentFolder = folder[i] + "/";
    }

    return results;
  }
}
