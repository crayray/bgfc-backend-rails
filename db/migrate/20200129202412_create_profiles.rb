class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :about
      t.string :interest1
      t.string :instagram
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
