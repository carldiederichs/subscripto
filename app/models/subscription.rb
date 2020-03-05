class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :company

  include PgSearch::Model
  pg_search_scope :search_by_title, against: :title
end
