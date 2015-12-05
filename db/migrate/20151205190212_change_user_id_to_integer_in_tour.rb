class ChangeUserIdToIntegerInTour < ActiveRecord::Migration
  def up
    change_column :tours, :user_id, :integer, null: false, default: 0
  end

  def down
    change_column :tours, :user_id, :string, null: true
  end
end
