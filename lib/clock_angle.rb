require('pry')

class Array
  define_method(:clock_angle) do
    if self[0] == 12
      self[0] == 0
    end
    minute_degree = self[1]*6
    hour_degree = self[0]*30 + self[1].to_f()/2
    angle = hour_degree - minute_degree
    angle = angle.abs
    if angle > 180
      angle = 360 - angle
    end
    angle
  end
end
