# 2079. Watering Plants

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
class Solution {
  public int wateringPlants(int[] plants, int capacity) {
    int result = 1;
    int water = capacity;
    int i = 0;
    while (plants[plants.length - 1] != 0) {
      int p = plants[i];
      plants[i] = Math.max(p - water, 0);
      water = Math.max(water - p, 0);

      if (plants[plants.length - 1] == 0)
        break;

      if (plants[i] != 0) {
        result += 2 * (i + 1);
        water = capacity;
        continue;
      }

      if (water < plants[i + 1]) {
        result += 2 * (i + 1);
        water = capacity;
      }

      result++;
      i++;
    }

    return result;
  }
}
```
