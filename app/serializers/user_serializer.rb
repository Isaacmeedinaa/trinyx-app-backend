class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :image, :age, :username, :email, :phone_number, :location, :like_count, :comment_count, :deal_count
  has_many :comments
  has_many :likes
  has_many :deals

  def deal_count
    @object.deals.count
  end

  def like_count
    @object.likes.count
  end

  def comment_count
    @object.comments.count
  end
end
