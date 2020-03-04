class User < ApplicationRecord
  has_many :subscriptions, dependent: :destroy
  has_many :companies, through: :subscriptions

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
