class AddNameToLimes < ActiveRecord::Migration[6.1]
  def change
    add_column :limes, :name, :string
  end
end
