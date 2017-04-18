require "rspec"
require "./scrabble.rb"

describe "Scrabble#tilevalues" do
  it("recognizes individual letters") do
    expect("a").to(eq("a"))
  end
end
