class Term

  @@terms = []

  define_method(:initialize) do |word,definition|
    @word = word
    @definition = definition
    @id = @@terms.length().+(1)
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
    @@terms.push(self)
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

end
