require 'jwt'
require 'grape-swagger'

class Base< Grape::API
	format :json

	helpers AuthHelper
	mount Auth
	
	version 'v1', using: :path
	mount V1::Products
	add_swagger_documentation

end
