class Library < ApplicationRecord
  belongs_to :user
  has_many   :outputs  
end