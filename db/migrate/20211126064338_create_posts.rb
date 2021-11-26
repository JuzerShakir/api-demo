class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.text :content, null:false
      t.references :user, null: false, foreign_key: true
      t.string :author_ip, null:false

      t.timestamps
    end
  end
end
