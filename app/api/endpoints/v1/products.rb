module V1
    class Products < Grape::API
        format :json
        prefix :api
        resource :products do
            desc "Get all products"
            params do

            end
            get :all do
               # authenticate!
                product = Product.all
                present  product
            end
            
            desc "search for products"
            params do
                requires :name, type: String, desc: "Product Name"
            end
            get :search do
               # authenticate!
                product = Product.where("name LIKE ?", "%#{params[:name]}%") 
                # processedProducts=[];
                # for i in product do
                #     i[:images]=i[:images].split(",")
                #     processedProducts.push(i)
                # end
                present  product
            end
        end
    end
end