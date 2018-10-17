require 'jwt'
require 'grape-swagger'

class Base< Grape::API
	format :json
	helpers AuthHelper
	mount Auth
	add_swagger_documentation

end
