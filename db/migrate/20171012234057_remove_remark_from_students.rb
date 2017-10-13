class RemoveRemarkFromStudents < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :remark, :text
  end
end
