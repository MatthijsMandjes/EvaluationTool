class AddColorToEvaluations < ActiveRecord::Migration[5.1]
  def change
    add_column :evaluations, :color, :string
  end
end
