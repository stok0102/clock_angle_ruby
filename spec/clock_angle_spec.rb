require('rspec')
require('clock_angle')

describe('Array#clock_angle') do
  it("is 0 at 12:00") do
    expect([0,0].clock_angle()).to(eq(0))
  end
  it("is 180 at 6:00") do
    expect([6,0].clock_angle()).to(eq(180))
  end
  it("is 24.5 at 1:01") do
    expect([1,1].clock_angle()).to(eq(24.5))
  end
  it("is 126 at 1:48") do
    expect([1,48].clock_angle()).to(eq(126))
  end
end
