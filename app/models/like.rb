class Like < ApplicationRecord
  belongs_to :user
  belongs_to :country
  validates_uniqueness_of :countries_id, scope: :user_id
end