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
              if(params[:tags]!=nil)
                  product = Product.joins(:tag).where(tags: {name: params[:tags]}).distinct
              else
                  product = Product.joins(:tag).distinct
              end
              present product, with: Entities::Product
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