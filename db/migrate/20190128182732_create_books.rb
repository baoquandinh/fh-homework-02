class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :genre
      t.string :genre_type
      t.string :classification
      t.integer :year
      t.timestamps
    end
  end
end
