require('rspec')
require('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end
  
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
  describe("#save") do
    it("adds a description to the array of saved descriptions") do
      test_definition = Definition.new(:description => "the name of my cat")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
  describe(".clear") do
    it("empties the array of saved descriptions") do
      test_definition = Definition.new(:description => "the name of my cat").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end
  describe("id") do
    it("returns the id of the vehicle") do
      test_definition = Definition.new(:description => "the name of my cat")
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end
end
