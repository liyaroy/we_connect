class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :post

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_uniqueness_of :email

  acts_as_follower
  acts_as_followable
end
