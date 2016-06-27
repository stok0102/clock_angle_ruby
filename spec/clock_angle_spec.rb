require('rspec')
require('clock_angle')

describe('Array#clock_angle') do
  it("is 0 at 12:00") do
    expect([0,0].clock_angle()).to(eq(0))
  end
  # it("is 0 at 12:00") do
  #   expect([0,0].clock_angle()).to(eq(0))
  # end
end
