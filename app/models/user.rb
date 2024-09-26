class User < ApplicationRecord
  has_many :comments, dependent: :destroy

  def comment_by?(n,m)
    comments.exists?(book_id: n,user_id: m)
  end
end
