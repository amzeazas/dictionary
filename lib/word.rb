class Word
  attr_reader(:name)
  @@words = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @id = @@words.length().+(1)
    @definitions = []
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:id) do
    @id
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end
end
