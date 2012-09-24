require 'rspec'
require_relative '../door'

describe Door do

  let(:door) { Door.new }

  it "is closed by default" do
    door.state.should eq(:closed)
  end

  it "can be opened" do
    door.open
    door.state.should eq(:open)
  end

  it "can be closed" do
    door.close
    door.state.should eq(:closed)
  end

  it "can be toggled" do
    state = door.state
    door.toggle
    door.state.should_not eq(state)
  end
end