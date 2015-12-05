class ChangeCreatedByToIntegerUserIdInEvent < ActiveRecord::Migration
  def change
    remove_column :events, :created_by, :string
    add_column :events, :user_id, :integer, null: false, default: 0
  end
end
