# 599. Minimum Index Sum of Two Lists

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```java
class Solution {
  public String[] findRestaurant(String[] list1, String[] list2) {
    if (list1.length > list2.length) {
      return findRestaurant(list2, list1);
    }

    ArrayList<String> results = new ArrayList<>();

    Map<String, Integer> list1Indics = new HashMap<>();
    for (int i = 0; i < list1.length; i++) {
      list1Indics.put(list1[i], i);
    }

    int min = list1.length + list2.length - 2;
    for (int j = 0; j < list2.length; j++) {
      String str2 = list2[j];

      if (!list1Indics.containsKey(str2))
        continue;

      int i = list1Indics.get(str2);
      if (i + j > min)
        continue;

      if (i + j < min) {
        min = i + j;
        results.clear();
      }

      results.add(str2);
    }

    return results.toArray(new String[results.size()]);
  }
}
```
