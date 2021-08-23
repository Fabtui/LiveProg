class CreateFavoritesBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_favs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
