class RemoveInterest1FromProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :interest1, :string
  end
end
