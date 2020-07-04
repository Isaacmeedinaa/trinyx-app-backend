class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :posted_on, :user, :deal
  has_one :user
  has_one :deal

  def posted_on
    @object.created_at.strftime("%m-%d-%Y")
  end
end
