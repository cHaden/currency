class Currency

  attr_reader :amount, :code

  def initialize( amount, code )
    #using currency codes as listed here: http://en.wikipedia.org/wiki/ISO_4217
    # quick reference:  EUR = euro
    # =>                GBP = pounds sterling
    # =>                USD = US dollars
    @amount = amount
    @code = code
  end

  def ==( otherCurrencyObject)
    if @amount == otherCurrencyObject.amount && @code == otherCurrencyObject.code
      return true
    else
      return false
    end
  end

  def +( otherCurrencyObject )
    if @code == otherCurrencyObject.code
      return self.class.new(@amount + otherCurrencyObject.amount, @code)
    else
      #error! maybe should throw an exception if we're being nice?
      return nil
    end
  end

  def -( otherCurrencyObject )
    if @code == otherCurrencyObject.code
      return self.class.new(@amount - otherCurrencyObject.amount, @code)
    else
      #error! maybe should throw an exception?
      return nil
    end
  end

end
