
module Entities
    class Product < Grape::Entity
     expose :id
     expose :name
     expose :description
     expose :price
     expose :stock
     expose :image, using: Entities::Image
     expose :tag, using: Entities::Tag

    end
end