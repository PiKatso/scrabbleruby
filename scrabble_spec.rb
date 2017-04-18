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
  it("only recognizes A, E, I, O, U, L, N, R, S, T as a value of '1'") do
    expect(scrabble.tiles("b")).to(eq(nil))
  end
  it("recognize A, E, I, O, U, L, N, R, S, T as a value of '1' regardless of case") do
    expect(scrabble.tiles("E")).to(eq(1))
  end
end
