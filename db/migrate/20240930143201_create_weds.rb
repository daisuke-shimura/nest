class CreateWeds < ActiveRecord::Migration[7.1]
  def change
    create_table :weds do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
