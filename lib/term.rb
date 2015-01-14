class Term

  define_method(:initialize) do |word,definition|
    @word = word
    @definition = definition
  end

  define_method(:word) do
    @word
  end

end
