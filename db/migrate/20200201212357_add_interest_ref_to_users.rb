class AddInterestRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :interest, null: false, foreign_key: true
  end
end
