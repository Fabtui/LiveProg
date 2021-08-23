class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :band, null: false, foreign_key: true
      t.references :bar, null: false, foreign_key: true
      t.date :start_date
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
