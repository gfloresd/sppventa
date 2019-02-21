class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :run
      t.string :name
      t.string :lastname
      t.string :mother_name

      t.timestamps
    end
    add_index :clients, :run, unique: true
  end
end
