class AddRatingToRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :records, :rating, :integer
  end
end
