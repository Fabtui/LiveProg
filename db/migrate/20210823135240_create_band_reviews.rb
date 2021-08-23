class CreateBandReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :band_reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
