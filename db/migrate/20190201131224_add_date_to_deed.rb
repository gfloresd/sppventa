class AddDateToDeed < ActiveRecord::Migration[5.2]
  def change
    add_column :deeds, :deed_date, :date
  end
end
