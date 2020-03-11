class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true
  validates :price, presence: true
  validates :renewal_date, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title, against: :title
end
