class RemoveColumnStyleFromTableBand < ActiveRecord::Migration[6.1]
  def change
    remove_column :bands, :style
  end
end
