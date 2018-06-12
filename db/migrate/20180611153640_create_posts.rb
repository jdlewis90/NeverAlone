class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :user_id
      t.string :title
      t.string :content
      t.string :post_type
      t.string :privacy

      t.timestamps
    end
  end
end
