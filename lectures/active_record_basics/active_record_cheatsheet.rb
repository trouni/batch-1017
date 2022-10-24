# CREATE
ichiran = Restaurant.new(name: "Ichiran", address: "Meguro")
ichiran.save

# Or #create => new + save
Restaurant.create(name: "Ichiran", address: "Meguro")

# READ
# Returns all the restaurants in the DB
Restaurant.all

# Get the first restaurant that matches
Restaurant.find(1)
Restaurant.find_by(name: 'Ichiran Ramen', address: 'Meguro')
Restaurant.find_by_name('Ichiran Ramen')

# Filter restaurants
Restaurant.where(address: 'Meguro', rating: 5)
# Custom SQL as string argument
Restaurant.where('name LIKE ?', "%Ramen%")

# Other
Restaurant.count
Restaurant.first
Restaurant.second
Restaurant.last

# UPDATE
ichiran.name = 'Ichiran Ramen'
ichiran.save

# Or #update => change + save
ichiran.update(name: 'Ichiran Ramen', rating: 5)

# DESTROY
ichiran.destroy

# Destroys all restaurants
Restaurant.destroy_all


