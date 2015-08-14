require('rspec')
require('word')
require('definition')

describe(Word) do
  describe("#name") do
    it("returns the name of the word") do
      test_word = Word.new(:description => "Harley Quinn")
      expect(test_word.name()).to(eq("Harley Quinn"))
    end
  end
end
