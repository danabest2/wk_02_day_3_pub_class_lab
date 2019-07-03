class Customer

attr_reader :name, :wallet, :age

def initialize(name, wallet)
  @name = name
  @wallet = wallet
  @age = age

end

def spend_money(drink)
  return @wallet -= drink.price
end



def buys_drink_from_pub(pub, drink)
  pub = pub.sold_drink(drink) && pub.money_into_till(drink)
  @customer.spend_money(drink)
end


end
