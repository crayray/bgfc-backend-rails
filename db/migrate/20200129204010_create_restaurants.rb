class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :about
      t.string :address
      t.string :yelp
      t.string :google
      t.string :site
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
