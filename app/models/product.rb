class Product < ApplicationRecord
    belongs_to :user
    has_many :image
    has_and_belongs_to_many :tag
end
