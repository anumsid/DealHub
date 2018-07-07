class Deal < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  has_many :votes
  has_many :voters, through: :votes, :source => :user

  validates :title, presence: true
  validates :location, presence: true
  validates :expiration_date, presence: true
  validates :category, presence: true
end
