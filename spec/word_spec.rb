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
  describe(".clear") do
    it("empties out all of the saved words") do
      Word.new(:name => "Harley Quinn").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
  describe("#id") do
    it("returns the id of the word") do
      test_word = Word.new(:name => "Harley Quinn")
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end
  describe("#definitions") do
    it("initially returns an empty array of definition for the word") do
      test_word = Word.new(:name => "Harley Quinn")
      expect(test_word.definitions()).to(eq([]))
    end
  end
end
