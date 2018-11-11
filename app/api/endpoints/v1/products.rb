module V1
    class Products < Grape::API
        format :json
        prefix :api
        resource :products do

            desc "filter by category"
            params do
                optional :tags, type: String, desc: "Tag Name"
            end
            get :all do
                product = Product.where("tags LIKE ?", "%#{params[:tags]}%") 
                present  product , with: Entities::Product
            end

            desc "search for products"
            params do
                requires :name, type: String, desc: "Product Name"
            end
            get :search do
               # authenticate!
                product = Product.where("name LIKE ?", "%#{params[:name]}%") 
                present  product 
            end
            
        end
    end
end