class CreateMons < ActiveRecord::Migration[7.1]
  def change
    create_table :mons do |t|
      t.integer :book_id

      t.timestamps
    end
  end
end
