class AddImageToOsusumes < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :image, :string
  end
end
