class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :name, presence: true, length: { in: 3..20 }, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
    validates :email, presence: true
end
