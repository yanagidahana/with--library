class Library < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
# belongs_to :syuppan, :lank, :read

  belongs_to :user
  has_many   :outputs, dependent: :destroy  

  validates :title, :impressions, :author, :syuppan, presence: true

end
