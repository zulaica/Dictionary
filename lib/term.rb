class Term

  @@terms = []

  define_method(:initialize) do |word,definition|
    @word = word
    @definition = definition
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    if @@terms == []
      @id = 0
    else
      @id = @@terms.last().id().+(1)
    end
    @@terms.push(self)
  end

  define_method(:destroy) do
    @@terms.delete(self)
  end

  define_singleton_method(:all) do
    @@terms
  end

  define_singleton_method(:clear) do
    @@terms = []
  end

  define_singleton_method(:find) do |identification|
    found_term = nil
    @@terms.each() do |term|
      if term.id().eql?(identification.to_i())
        found_term = term
      end
    end
    found_term
  end

  define_singleton_method(:seek) do |word|
    sought_word = "Word not found."
    sought_definition = nil
    variable = []
    @@terms.each() do |term|
      if term.word() == word
        sought_word = term.word()
        sought_definition = term.definition()
      end
    end
    variable = [sought_word,sought_definition]
    variable
  end

end
