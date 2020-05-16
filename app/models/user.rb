class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i.freeze
       
  validates :nickname,
    presence: true,
    uniqueness: true,
    length: { maximum: 20 }     
  validates :email,
    presence: true,
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true,
    length: { maximum: 50 }
  validates :password,
    format: { with: VALID_PASSWORD_REGEX }
end
