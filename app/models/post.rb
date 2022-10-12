class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :image
    validates :date
    validates :address
    validates :evaluation
  end

  belongs_to :user
  has_many :comments
  has_one_attached :image
  
  validates :image, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

  def self.search(search)
    if search != ""
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
