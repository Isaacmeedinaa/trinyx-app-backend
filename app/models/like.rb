class Like < ApplicationRecord
  belongs_to :user
  belongs_to :business
  belongs_to :deal
end
