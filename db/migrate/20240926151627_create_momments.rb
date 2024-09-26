class CreateMomments < ActiveRecord::Migration[7.1]
  def change
    create_table :momments do |t|
      t.integer :momment_id
      t.string :momment_name
      t.timestamps
    end
  end
end
