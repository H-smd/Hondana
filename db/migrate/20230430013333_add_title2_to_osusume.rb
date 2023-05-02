class AddTitle2ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title2, :string
  end
end
