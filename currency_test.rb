require 'minitest/autorun'
require 'minitest/pride'
require './currency.rb'

# Currency:
#
# * Should be created with an amount and a currency code
# * Should equal another Currency object with the same amount and currency code
# * Should be able to be added to another Currency object with the same currency code
# * Should be able to be subtracted by another Currency object with the same currency code
# * Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
# * Should be able to be multiplied by a Fixnum or Float and return a Currency object

class CurrencyTest < Minitest::Test

  def test_currency_initialize_with_two_parameters
    assert Currency.new( 1.00, "USD")
  end

end