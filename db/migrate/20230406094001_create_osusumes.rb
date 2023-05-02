class CreateOsusumes < ActiveRecord::Migration[6.1]
  def change
    create_table :osusumes do |t|
      t.string :name
      t.string :title
      t.text :about

      t.timestamps
    end
  end
end
