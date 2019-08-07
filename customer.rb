class Customer

attr_reader :name, :age
attr_accessor :wallet, :drunkenness

def initialize(name, wallet, drunkenness, age)
  @name = name
  @wallet = wallet
  @drunkenness = drunkenness
  @age = age
end

def remove_from_wallet(drink_price)
   return @wallet -= drink_price
end

def new_drunkenness_level(alcohol_level)
  return @drunkenness += alcohol_level
end


end
