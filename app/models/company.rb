class Company < ApplicationRecord
  has_many :users, through: :subscriptions
  has_many :subscriptions
end
