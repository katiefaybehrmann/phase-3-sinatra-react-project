class ChangeStringToIntInRecords < ActiveRecord::Migration[6.1]
  def change
    change_column :records, :genre_id, :integer
  end
end
