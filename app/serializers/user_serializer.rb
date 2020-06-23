class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :email, :phone_number, :location, :like_count, :comment_count
  has_many :comments
  has_many :likes

  def like_count
    @object.likes.count
  end

  def comment_count
    @object.comments.count
  end
end
