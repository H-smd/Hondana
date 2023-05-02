class AddUserIdToOsusumes < ActiveRecord::Migration[6.1]
  def change
    add_column :osusumes, :user_id, :integer
  end
end
