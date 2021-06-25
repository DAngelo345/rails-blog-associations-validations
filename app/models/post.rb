class Post < ActiveRecord::Base
    
    has_many :post_tags
    has_many :tags, through: :post_tags
    belongs_to :user
    validates :name, presence: true
    validates :content, presence: true
    # accepts_nested_attributes_for :tags

    # def tags_attributes=(tag_attributes)
    #     tag_attributes.values.each do |tag_attribute|
    #       tag = Tag.find_or_create_by(tag_attribute)
    #       self.tags << tag
    #     end
    #   end
  
end
