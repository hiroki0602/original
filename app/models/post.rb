class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :image
    validates :date
    validates :address
    validates :evaluation
  end
end
