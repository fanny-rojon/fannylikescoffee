class Post < ApplicationRecord
  belongs_to :category
  has_one_attached :photo
end
