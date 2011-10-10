class SimpleParser
  def parse_and_sum(numbers_string="")
    if(numbers_string.length == 0)
      return 0;
    elsif(!numbers_string.include?(","))
      return numbers_string.to_i
    else
      raise "I can only handle 0 or 1 numbers for now!"
    end
  end
end

class SimpleParserTests
  def test_returns_zero_when_empty_string
    result = SimpleParser.new.parse_and_sum("")
    raise "Parse and sum should have returned 0 on an empty string" if result != 0
    puts "Test passed"
  end
end

SimpleParserTests.new.test_returns_zero_when_empty_string