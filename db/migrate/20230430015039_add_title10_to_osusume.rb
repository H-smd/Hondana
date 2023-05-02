class AddTitle10ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title10, :string
  end
end
