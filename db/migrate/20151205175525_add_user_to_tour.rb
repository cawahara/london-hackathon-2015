class AddUserToTour < ActiveRecord::Migration
  def change
    add_column :tours, :user_id, :string
  end
end
