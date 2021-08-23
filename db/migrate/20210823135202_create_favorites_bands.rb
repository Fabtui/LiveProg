class CreateFavoritesBands < ActiveRecord::Migration[6.1]
  def change
    create_table :band_favs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
