class AddReferenceToDeed < ActiveRecord::Migration[5.2]
  def change
    add_reference :deeds, :problem, foreign_key: true
    add_reference :deeds, :employee, foreign_key: true
  end
end
