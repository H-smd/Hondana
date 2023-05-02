class Like < ApplicationRecord
  belongs_to :osusume
  belongs_to :user
  validates_uniqueness_of :osusume_id, scope: :user_id
end
