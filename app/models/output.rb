class Output < ApplicationRecord
  belongs_to :library
  belongs_to :user

  validates :content, presence: true
end

