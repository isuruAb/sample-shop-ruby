module V1
    class Banners < Grape::API
        format :json
        prefix :api
        resource :banners do

            desc "Get All Banners"
            params do
            end
            get do
              present :status, 200
              present Banner.all
            end

            desc "Add a Banner"
            params do
                requires :banner, type: Hash do
                    requires :name, type: String, desc: "Banner Name"
                    requires :url, type: String, desc: "Banner URL"
                end
            end
            post do
                authenticate!
                banner = Banner.create!(params[:banner])
                present :status, 200
                present  banner 
            end
            
			desc 'Delete a Banner.'
			params do
				requires :id, type: Integer, desc: 'Banner Id'
			end
			delete do
				authenticate!
			   	banner = Banner.delete(params[:id])
			   	present :status, 201
			   	present :banner, banner
            end

        end
    end
end