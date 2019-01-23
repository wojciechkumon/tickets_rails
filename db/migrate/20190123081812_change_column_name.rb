class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :city, :location
  end
end
