class AddReferenceToProblem < ActiveRecord::Migration[5.2]
  def change
    add_reference :problems, :client, foreign_key: true
    add_reference :problems, :employee, foreign_key: true
  end
end
