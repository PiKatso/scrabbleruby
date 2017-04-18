require "rspec"
require "./Scrabble.rb"

describe "Scrabble#tiles" do
  scrabble = Scrabble.new
  it("recognizes individual letters") do
    expect("a").to(eq("a"))
  end
  it("recognize 'a' as a value of '1'") do
    expect(scrabble.tiles("a")).to(eq(1))
  end
end
