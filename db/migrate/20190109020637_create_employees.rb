class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :run
      t.string :name
      t.string :lastname
      t.string :mother_name
      t.string :charge

      t.timestamps
    end
    add_index :employees, :run, unique: true
  end
end
