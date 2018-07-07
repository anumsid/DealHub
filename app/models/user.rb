class User < ApplicationRecord
  has_many :votes
  has_many :deals, through: :votes
  has_many :comments
  has_many :deal_comments, through: :comments, :source => :deal

  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :city, presence: true
  validates :password_digest, presence: true
  validates :email, presence: true, uniqueness: true
end
