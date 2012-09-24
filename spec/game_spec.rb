require 'rspec'
require_relative '../game'

describe Game do

  let( :game ) { Game.new }

  it "should start with 100 doors" do
    game.doors.count.should eq(100)
  end

  it "detrmins if it should toggle door" do
    game.index = 4
    game.toggle?(3).should be_true
    game.toggle?(4).should be_false
  end

  it "should at step 2 return array with every other door closed" do
    control_array = [true, false] * 50
    game.step #1
    game.index = 2
    game.step #2
    game.doors.collect{ |d| d.open? }.should eq(control_array)
  end

end