class AddGroupToEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_reference :evaluations, :group, foreign_key: true
  end
end
