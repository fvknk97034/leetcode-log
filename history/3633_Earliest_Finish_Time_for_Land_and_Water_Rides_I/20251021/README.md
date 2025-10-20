# 3633. Earliest Finish Time for Land and Water Rides I

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} land_start_time
# @param {Integer[]} land_duration
# @param {Integer[]} water_start_time
# @param {Integer[]} water_duration
# @return {Integer}
def earliest_finish_time(land_start_time, land_duration, water_start_time, water_duration)
  result = 5000

  land_start_time.each_with_index do |ls, i|
    land_finished_time = ls + land_duration[i]

    water_start_time.each_with_index do |ws, j|
      water_finished_time = ws + water_duration[j]

      time_land_to_water = water_finished_time
      time_land_to_water += land_finished_time - ws if land_finished_time > ws

      time_water_to_land = land_finished_time
      time_water_to_land += water_finished_time - ls if water_finished_time > ls

      result = [time_land_to_water, time_water_to_land, result].min
    end
  end

  result
end
```
