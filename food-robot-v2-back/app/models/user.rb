class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :encrypted_password, :username, :access_level, presence: true

  # validtions to complete when password and username requirements are decided
  # validates :password, length:
  # validates :username, format: /regex/

  validates :username, uniqueness: true

  enum access_level: [:staff, :volunteer]
end
