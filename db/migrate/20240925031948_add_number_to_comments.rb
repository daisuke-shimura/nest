class AddNumberToComments < ActiveRecord::Migration[7.1]
  def change
    add_column :comments, :number, :integer
    add_column :comments, :user_id, :integer
  end
end
