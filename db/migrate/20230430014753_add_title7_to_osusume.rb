class AddTitle7ToOsusume < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :title7, :string
  end
end
