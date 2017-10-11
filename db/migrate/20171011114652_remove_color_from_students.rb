class RemoveColorFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :color, :string
  end
end
