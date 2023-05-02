class AddTitle4ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title4, :string
  end
end
