class AddLastColorToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :last_color, :string
  end
end
