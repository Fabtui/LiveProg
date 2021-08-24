class CreateBands < ActiveRecord::Migration[6.1]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :style
      t.text :description
      t.string :youtube_url
      t.string :facebook_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
