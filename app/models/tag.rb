class Tag < ApplicationRecord
    validates :name, uniqueness: true
    has_many :posts
    has_many :users, through: :posts
    

end
