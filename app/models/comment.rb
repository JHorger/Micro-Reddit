class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { maximum: 500 }
end
