class ChangeBarsTypeToDescription < ActiveRecord::Migration[6.1]
  def change
    rename_column :bars, :type, :description
  end
end
