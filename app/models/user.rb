class User < ApplicationRecord
    validates :name, uniqueness: true
    validates :name, presence: true
    has_many :posts
    has_many :tags, through: :posts
end
