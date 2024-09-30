class CreateWeeks < ActiveRecord::Migration[7.1]
  def change
    create_table :weeks do |t|
      
      t.integer "mon"
      t.integer "tue"
      t.integer "wed"
      t.integer "thu"
      t.integer "fri"
      t.integer "sat"
      t.integer "sun"
      t.integer "book_id"
      t.timestamps
    end
  end
end
