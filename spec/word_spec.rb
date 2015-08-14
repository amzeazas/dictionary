require('rspec')
require('word')
require('definition')

describe(Word) do
  describe("#name") do
    it("returns the name of the word") do
      test_word = Word.new(:name => "Harley Quinn")
      expect(test_word.name()).to(eq("Harley Quinn"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a word to the array of saved words") do
      test_word = Word.new(:name => "Harley Quinn")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
end
