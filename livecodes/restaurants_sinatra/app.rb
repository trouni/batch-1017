require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  # Retrieve all the restaurants from the DB
  # Pass the restaurants to the view using an @variable
  @restaurants = Restaurant.all

  # Display the restaurants
  erb :index
end

get '/restaurants/:id' do
  # Retrieve the restaurant id from the path
  # params => { id: '2' }
  id = params[:id]

  # Retrieve the restaurant from the DB using the :id
  @restaurant = Restaurant.find(id)

  # Display the restaurant
  erb :show
end

post '/restaurants' do
  # Retrieve the restaurant information from the form
  # params => { name: 'McDonalds', address: 'Meguro }
  name = params[:name]
  address = params[:address]

  # Create the new restaurant
  restaurant = Restaurant.new(name: name, address: address)
  restaurant.save

  # Redirect to the restaurant's show page
  redirect "/restaurants/#{restaurant.id}"
end
