require("rspec")
require("term")

describe("Term") do
  before() do
    Term.clear()
  end

  describe("#word") do
    it("returns the word in our term") do
      test_term = Term.new("carrot","A delicious vegetable.")
      expect(test_term.word()).to(eq("carrot"))
    end
  end

  describe("#definition") do
    it("returns the definition") do
      test_term = Term.new("carrot","A delicious vegetable.")
      expect(test_term.definition()).to(eq("A delicious vegetable."))
    end
  end

  describe("#save") do
    it("adds a term to the terms array") do
      test_term = Term.new("carrot","A delicious vegetable.")
      test_term.save()
      expect(Term.all()).to(eq([test_term]))
    end
  end

  describe(".all") do
    it("returns an empty list") do
      expect(Term.all()).to(eq([]))
    end
  end
end
