class User < ApplicationRecord
  has_many :hostings
  has_many :messages
  has_many :conversations, through: :messages
  has_many :wishes
  has_many :activities, through: :wishes
  has_many :events, through: :hostings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
