class AddTitle8ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title8, :string
  end
end
