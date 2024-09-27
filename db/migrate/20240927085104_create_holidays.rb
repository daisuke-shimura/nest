class CreateHolidays < ActiveRecord::Migration[7.1]
  def change
    create_table :holidays do |t|
      t.integer :book_id
      t.boolean :trigger, null: false, default: false

      t.timestamps
    end
  end
end
