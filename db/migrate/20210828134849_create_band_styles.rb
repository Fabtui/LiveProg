class CreateBandStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :band_styles do |t|
      t.references :style, null: false, foreign_key: true
      t.references :band, null: false, foreign_key: true
      t.timestamps
    end
  end
end
