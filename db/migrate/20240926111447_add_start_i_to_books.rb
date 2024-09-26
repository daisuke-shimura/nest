class AddStartIToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :start_i, :date
    add_column :books, :finish_i, :date
  end
end
