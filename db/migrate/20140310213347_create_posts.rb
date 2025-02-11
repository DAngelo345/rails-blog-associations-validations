class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.belongs_to :user
      t.belongs_to :tag

      t.timestamps null: false
    end
  end
end
