require './door'

class Game
  attr_reader :doors
  attr_writer :index

  def initialize 
    @doors ||= [].tap do |array| 
      100.times{ array << Door.new }
    end
    @index = 1
  end

  def step
    doors.each_with_index do |door, i|
      door.toggle if toggle?( i )
    end
  end

  def toggle?(door_idx)
    (door_idx + 1 ) % @index == 0
  end

  def run
    1.upto(100) do |step_index|
      @index = step_index
      step
    end
    puts doors.map(&:state)
  end

end