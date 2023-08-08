class AddColumnToShopauth < ActiveRecord::Migration[6.0]
  def change
    add_column :shopauths, :password, :string
  end
end
