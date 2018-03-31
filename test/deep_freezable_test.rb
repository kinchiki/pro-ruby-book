require 'minitest/autorun'
require_relative '../lib/bank'
require_relative '../lib/team'

class GateTest < Minitest::Test
  def test_deep_freezable_to_array
    assert_equal(%w[Japan US India], Team::COUNTRIES)
    assert(Team::COUNTRIES.frozen?)
    assert(Team::COUNTRIES.all?(&:frozen?))
  end

  def test_deep_freezable_to_hash
    assert_equal(
      { 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
      Bank::CORRENCIES
    )
    assert(Bank::CORRENCIES.frozen?)
    assert(Bank::CORRENCIES.all? { |key, value| key.frozen? && value.frozen? })
  end
end
