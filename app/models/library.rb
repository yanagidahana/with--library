class Library < ApplicationRecord
  belongs_to :user
  has_many   :outputs, dependent: :destroy  

  validates :title, :impressions, :author, :syuppan, presence: true
end
