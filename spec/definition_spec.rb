require('rspec')
require('definition')

describe(Definition) do
  describe("#descrition") do
    it("returns the description of a definition") do
      test_definition = Definition.new(:description => "the name of my cat")
      expect(test_definition.description()).to(eq("the name of my cat"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end
end
