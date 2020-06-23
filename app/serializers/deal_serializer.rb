class DealSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :code, :image, :begin_date, :expiration_date, :posted_on, :like_count, :comment_count
  has_one :user
  has_one :business
  has_many :likes
  has_many :comments

  def like_count
    @object.likes.count
  end

  def comment_count
    @object.comments.count
  end

  def posted_on
    @object.created_at.strftime("%m-%d-%Y")
  end

end
