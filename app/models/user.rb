class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, length: {minimum: 3}, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
end
