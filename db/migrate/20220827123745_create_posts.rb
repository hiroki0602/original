class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.text :image
      t.text :date
      t.text :address
      t.integer :evaluation
      t.timestamps
    end
  end
end
