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

  def self.search(search)
    if search != ""
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
