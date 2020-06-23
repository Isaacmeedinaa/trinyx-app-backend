class Deal < ApplicationRecord
  # db associations
  has_many :comments
  has_many :likes
  belongs_to :user
  belongs_to :business
end
