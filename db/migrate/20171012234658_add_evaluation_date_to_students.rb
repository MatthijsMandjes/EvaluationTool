class AddEvaluationDateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :evaluation_date, :date
  end
end
