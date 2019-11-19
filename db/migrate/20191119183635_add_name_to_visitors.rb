class AddNameToVisitors < ActiveRecord::Migration[5.2]
  def change
    add_column :visitors, :name, :string
  end
end
