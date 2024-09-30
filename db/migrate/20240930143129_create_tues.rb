class CreateTues < ActiveRecord::Migration[7.1]
  def change
    create_table :tues do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
