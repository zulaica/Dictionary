require("rspec")
require("term")

describe("Term") do
  # before() do
  #   Term.clear()
  # end

  describe("#word") do
    it("returns the word in our term") do
      test_term = Term.new("carrot","A delicious vegetable.")
      expect(test_term.word()).to(eq("carrot"))
    end
  end

end
