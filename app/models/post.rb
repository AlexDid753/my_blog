class Post < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 120 }
  validates :text, presence: true

end
