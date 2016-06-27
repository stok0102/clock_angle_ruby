require('pry')

class Array
  define_method(:clock_angle) do
    minute_degree = self[1]*6
    hour_degree = self[0]*30 + self[1].to_f()/2
    angle = hour_degree - minute_degree
    # binding.pry
  end
end
