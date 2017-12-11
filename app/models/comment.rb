class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  attr_accessible :content, :user_id, :post_id, :created_at

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 420, minimum: 5 }
end
