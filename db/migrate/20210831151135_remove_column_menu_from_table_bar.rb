class RemoveColumnMenuFromTableBar < ActiveRecord::Migration[6.1]
  def change
    remove_column :bars, :menu
  end
end
