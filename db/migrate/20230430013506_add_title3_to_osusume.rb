class AddTitle3ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title3, :string
  end
end
