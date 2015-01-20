class Currency
  def initialize( amount, code )
    #using currency codes as listed here: http://en.wikipedia.org/wiki/ISO_4217
    # quick reference:  EUR = euro
    # =>                GBP = pounds sterling
    # =>                USD = US dollars
    @amount = amount
    @code = code
  end
end
