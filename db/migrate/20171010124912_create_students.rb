class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :full_name
      t.string :image
      t.string :color
      t.timestamps
    end
  end
end
