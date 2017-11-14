class Post < ActiveRecord::Base
  has_many  :comments
  attr_accessible :title, :text, :theme

  validates :title, presence: true, length: { maximum: 120, minimum:5 }
  validates :text, presence: true, length: { minimum:5 }
  validates :theme, presence: true

end
