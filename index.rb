
@shopping_cart = []

@products = [
  { reference_number: 1231, name: "Super Lite Mat", price: 10 },
  { reference_number: 1232, name: "Power Mat", price: 20 },
  { reference_number: 1233, name: "Block", price: 30 },
  { reference_number: 1234, name: "Meditation cushion", price: 30 },
  { reference_number: 1235, name: "The best T-shirt", price: 200 },
  { reference_number: 1236, name: "The cutest yoga pants", price: 300 },
  { reference_number: 1237, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 1238, name: "Light On Yoga", price: 10 }
]

def welcome
  puts "Welcome! These are our products!"
end

def show_items
  @products.each { |product|
    puts product[:name]
    puts "reference number: #{product[:reference_number]}"
  }
end

def want_to_order
  puts "Do you want to make an order? y/n"
  answer = gets.chomp.downcase
  if answer == "y"
    make_order
    add_item
  else
    puts "Have a nice day!"
  end
end



def make_order
  puts "Put in the reference number: "
  @ref = gets.to_i
end

def add_item
  @products.each do |product|
    if @ref == product[:reference_number]
    @shopping_cart << product
    end
  end
end

def show_shopping_cart
  @shopping_cart.each do |item|
  puts @shopping_cart[item][:name]
  end
end



def order_proces
  welcome
  show_items
  want_to_order
  show_shopping_cart

end


order_proces
