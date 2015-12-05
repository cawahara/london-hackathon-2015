class RemoveEventIdToEvents < ActiveRecord::Migration
  def change
    remove_column :events, :event_id, :string
  end
end
