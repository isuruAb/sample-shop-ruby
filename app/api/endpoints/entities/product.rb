
module Entities
    class Product < Grape::Entity
     expose :name
     expose :description
     expose :tags
     expose :price
     expose :stock
     expose :image, using: Entities::Image
     expose :tag, using: Entities::Tag

    end
end