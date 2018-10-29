module V1
    class Products < Grape::API
        format :json
        prefix :api
        resource :users do
            desc "Get all products"
            params do

            end
            get :products do
                authenticate!
                product = Product.all
                present  product
            end
            
        end
    end
end