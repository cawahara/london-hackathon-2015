class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.date :from
      t.date :to

      t.timestamps null: false
    end
  end
end
