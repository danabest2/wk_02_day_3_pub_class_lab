class Pub

attr_reader :name

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def drink_count()
  return @drinks.size
end

def sold_drink(drink)
  return @drinks.delete(drink)
end

def till_total()
  return @till
end

def money_into_till(drink)
  return @till += drink.price
end











end
