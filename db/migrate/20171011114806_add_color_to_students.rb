class AddColorToStudents < ActiveRecord::Migration[5.1]
  def change
    # add_column :students, :color, array: true, default: []
    add_column :students, :color, :string, array: true, default: []
  end
end
