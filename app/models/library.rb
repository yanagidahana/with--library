class Library < ApplicationRecord
  belongs_to :user
  has_many   :outputs  

  validates :title, :impressions, :author, :syuppan, presence: true
end
