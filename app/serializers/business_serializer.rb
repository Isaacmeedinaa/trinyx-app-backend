class BusinessSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :business_industry, :email, :phone_number, :location, :lat, :lng, :member_since, :deal_count, :like_count
  has_many :deals
  has_many :likes

  def deal_count
    @object.deals.count
  end

  def like_count
    @object.likes.count
  end

  def member_since
    @object.created_at.strftime("%m-%d-%Y")
  end
end
