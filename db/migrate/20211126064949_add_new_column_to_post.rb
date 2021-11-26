class AddNewColumnToPost < ActiveRecord::Migration[6.1]
  def change
      add_column :posts, :avg_rating, :float
  end
end
