require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntaxTest< Minitest::Test
  def test_convert_length
    assert_equal('{}', convert_hash_syntax('{}'))
  end
end
