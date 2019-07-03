class Customer

attr_reader :name, :wallet, :age

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
end

def spend_money(drink)
  return @wallet -= drink.price
end

def buys_drink_from_pub(pub, drink)
  pub = pub.sold_drink(drink) && pub.money_into_till(drink)
  spend_money(drink)
end


end
