class AddStartToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :start, :string
    add_column :books, :finish, :string
  end
end
