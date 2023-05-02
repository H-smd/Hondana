class AddTitle5ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title5, :string
  end
end
