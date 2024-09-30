class RemoveMonFromWeeks < ActiveRecord::Migration[7.1]
  def change
    remove_column :weeks, :mon, :integer
    remove_column :weeks, :tue, :integer
    remove_column :weeks, :wed, :integer
    remove_column :weeks, :thu, :integer
    remove_column :weeks, :fri, :integer
    remove_column :weeks, :sat, :integer
    remove_column :weeks, :sun, :integer
  end
end
