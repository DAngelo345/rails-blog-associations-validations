class Post < ActiveRecord::Base
    has_many :tags
    belongs_to :user
    validates :name, presence: true
    validates :content, presence: true
  
end
