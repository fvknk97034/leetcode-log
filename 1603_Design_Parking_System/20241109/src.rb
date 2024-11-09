class ParkingSystem

=begin
  :type big: Integer
  :type medium: Integer
  :type small: Integer
=end
  def initialize(big, medium, small)
    @max_big = big
    @big_count = 0
    @max_medium = medium
    @medium_count = 0
    @max_small = small
    @small_count = 0
  end

=begin
  :type car_type: Integer
  :rtype: Boolean
=end
  def add_car(car_type)
    case car_type
    when 1
      return false if @big_count === @max_big
      @big_count += 1
    when 2
      return false if @medium_count === @max_medium
      @medium_count += 1
    when 3
      return false if @small_count === @max_small
      @small_count += 1
    end
    true
  end
end

# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem.new(big, medium, small)
# param_1 = obj.add_car(car_type)
