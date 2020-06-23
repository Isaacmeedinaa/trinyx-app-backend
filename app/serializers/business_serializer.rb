class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :business_industry, :email, :phone_number, :location, :deal_count, :like_count
  has_many :deals
  has_many :likes

  def deal_count
    @object.deals.count
  end

  def like_count
    @object.likes.count
  end
end
