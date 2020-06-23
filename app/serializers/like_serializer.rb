class LikeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :deal
  has_one :business
end
