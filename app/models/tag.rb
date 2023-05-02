class Tag < ApplicationRecord
# 以下を追記
validates :name, presence: true
#Tagsテーブルから中間テーブルに対する関連付け
has_many :osusume_tag_relations, dependent: :destroy
#Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
has_many :osusumes, through: :osusume_tag_relations, dependent: :destroy
end
