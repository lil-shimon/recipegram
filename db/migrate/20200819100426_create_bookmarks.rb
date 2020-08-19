class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :user, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
      t.index [:user_id, :recipe_id], unique: true
    end
  end
end