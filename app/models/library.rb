class Library < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :syuppan, :lank, :read

  belongs_to :user
  has_many   :outputs, dependent: :destroy  

  validates :title, :impressions, :author, :syuppan, presence: true

  #ジャンルの選択が「--」の時は保存できないようにする
  validates :category_id, :lank_id, :read_id, numericality: { other_than: 0 } 
end
