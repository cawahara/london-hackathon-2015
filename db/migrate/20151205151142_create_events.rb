class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_id
      t.string :name
      t.datetime :from
      t.datetime :to
      t.string :created_by

      t.timestamps null: false
    end
  end
end
