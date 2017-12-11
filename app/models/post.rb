class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  attr_accessible :title, :text, :theme

  validates :title, presence: true, length: { maximum: 120, minimum: 5 }
  validates :text, presence: true, length: { minimum: 5 }
  validates :theme, presence: true

  def theme_rus
    case theme
      when 'life'
        ('О жизни')
      when 'work'
        ('О работе')
      else
        ('Без темы')
    end
  end
end
