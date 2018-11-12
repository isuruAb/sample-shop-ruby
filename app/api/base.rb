require 'jwt'
require 'grape-swagger'

class Base< Grape::API
	format :json

	helpers AuthHelper
	mount Auth
	
	version 'v1', using: :path
	mount V1::Products
	mount V1::Banners
	add_swagger_documentation

end
