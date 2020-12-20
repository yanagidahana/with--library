class Output < ApplicationRecord
  belongs_to :library
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
end

