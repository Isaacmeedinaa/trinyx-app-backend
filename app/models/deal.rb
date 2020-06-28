class Deal < ApplicationRecord
  # db associations
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user, optional: true
  belongs_to :business
end
