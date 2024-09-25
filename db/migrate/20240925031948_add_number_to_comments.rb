class AddNumberToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :number, :integer
  end
end
