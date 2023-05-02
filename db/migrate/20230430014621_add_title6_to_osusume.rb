class AddTitle6ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title6, :string
  end
end
