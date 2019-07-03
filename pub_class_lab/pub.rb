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

def check_customer_age(customer)
  return @customer.age
end

def old_enough(customer)
   return customer.age >= 18
end

def sell_drink_when_old_enough(customer, drink)
    
end










end
