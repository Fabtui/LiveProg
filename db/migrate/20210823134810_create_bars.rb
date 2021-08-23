class CreateBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :address
      t.string :type
      t.string :menu

      t.timestamps
    end
  end
end
