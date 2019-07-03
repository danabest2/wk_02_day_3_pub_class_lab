class Customer

attr_reader :name, :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def spend_money(drink)
  return @wallet -= drink.price
end




def buys_drink_from_pub(pub, drink)
  pub = pub.sold_drink(drink) && pub.money_into_till(drink)
  spend_money(drink)
end


end
