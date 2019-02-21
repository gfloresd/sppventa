class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :created_at
      t.string :note
      t.date :finished_at
      t.boolean :finished
      t.string :document_type
      t.integer :document_number
      t.date :buy_at
      t.integer :product_code

      t.timestamps
    end
  end
end
