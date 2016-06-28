require("rspec")
require("scrabble")

describe("String#scrabble") do
  it("returns value of a single letter") do
    expect(("A").scrabble()).to(eq(1))
  end
  it("returns value of an entire word") do
    expect(("HELLO").scrabble()).to(eq(8))
  end
end
