class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.string :artist
      t.integer :release_date
      t.string :image_url
      t.boolean :listened
      t.string :genre_id
    end
  end
end
