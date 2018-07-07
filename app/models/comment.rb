class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :deal
  
  validates :content, presence: true
end
