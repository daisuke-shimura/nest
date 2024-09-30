class CreateSats < ActiveRecord::Migration[7.1]
  def change
    create_table :sats do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
