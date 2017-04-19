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
  it("recognize A, E, I, O, U, L, N, R, S, T as a value of '1'") do
    expect(scrabble.tiles("e")).to(eq(1))
  end
  it("recognize A, E, I, O, U, L, N, R, S, T as a value of '1' regardless of case") do
    expect(scrabble.tiles("E")).to(eq(1))
  end
  it("recognizes the corresponding values for all other letters") do
    expect(scrabble.tiles("q")).to(eq(10))
  end
  it("recognizes and totals the letters in a word") do
    expect(scrabble.tiles("dog")).to(eq(5))
  end
  it("recognizes multiple instances of the same letter") do
    expect(scrabble.tiles("poop")).to(eq(8))
  end
end
