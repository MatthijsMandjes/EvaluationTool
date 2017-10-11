class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.date :start_date
      t.date :end_date
      t.integer :batch

      t.timestamps
    end
  end
end
