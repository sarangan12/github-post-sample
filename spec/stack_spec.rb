require_relative '../src/stack.rb'

describe Stack do
  before(:each) do
    @stack = Stack.new
  end

  it "should push and pop the same value" do
    @stack.push(90)
    expect(@stack.pop).to eq(90)
  end

  it "should push and pop the same values" do
    @stack.push(90)
    @stack.push(91)
    @stack.push(92)
    expect(@stack.pop).to eq(92)
  end

  it "should give the correct count" do
    @stack.push(90)
    @stack.push(91)
    @stack.push(92)
    expect(@stack.count).to eq(3)
  end
end