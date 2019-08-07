class Customer

attr_reader :name
attr_accessor :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def remove_from_wallet(drink_price)
   return @wallet -= drink_price
end


end
