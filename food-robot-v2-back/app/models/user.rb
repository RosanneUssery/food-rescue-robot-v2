class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :encrypted_password, :username, :access_level, presence: true
  # validates :password, length - fill in/expand upon validations when password requirements are set
  # validates :username, format: /regex/ - fill in when username requirements are set
  validates :username, uniqueness: true

  enum access_level: [:staff, :volunteer]
end
