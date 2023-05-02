class AddTitle9ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title9, :string
  end
end
