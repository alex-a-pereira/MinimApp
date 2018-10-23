class Post < ApplicationRecord
  validates :name, presence: true, length: {maximum: 40}
  validates :content, presence: true, length: {maximum: 2000}
end
