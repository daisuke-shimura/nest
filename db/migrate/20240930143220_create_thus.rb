class CreateThus < ActiveRecord::Migration[7.1]
  def change
    create_table :thus do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
