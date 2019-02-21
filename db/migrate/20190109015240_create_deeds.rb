class CreateDeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :deeds do |t|
      t.date :created_at
      t.text :description

      t.timestamps
    end
  end
end
