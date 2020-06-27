class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user, :business, :deal
  has_one :user
  has_one :deal
  has_one :business
end
