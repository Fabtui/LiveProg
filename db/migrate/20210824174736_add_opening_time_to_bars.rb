class AddOpeningTimeToBars < ActiveRecord::Migration[6.1]
  def change
    add_column :bars, :opening_time, :string
  end
end
