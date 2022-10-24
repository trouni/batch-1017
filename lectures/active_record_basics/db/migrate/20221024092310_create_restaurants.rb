class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      # t.text to store longer paragraphs
      
      t.timestamps
    end
  end
end