require('pry')

class Array
  define_method(:clock_angle) do
    clock_array = []
    self.each do |num|
      clock_array.push(num.to_f())
    end
    clock_array
    if clock_array[0] == 12
      clock_array[0] == 0
    end
    minute_degree = clock_array[1]*6
    hour_degree = clock_array[0]*30 + clock_array[1].to_f()/2
    angle = hour_degree - minute_degree
    angle = angle.abs
    if angle > 180
      angle = 360 - angle
    end
    angle
  end
end
