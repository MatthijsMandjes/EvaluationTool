class AddEvaluationAtToEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluations, :evaluation_at, :date
  end
end
