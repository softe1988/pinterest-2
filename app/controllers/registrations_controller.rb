#will inherit from registration controller within devise
class RegistrationsController < Devise::RegistrationsController
	#to protect the info after registration
	protected
	
	#created custom url
	def after_sign_up_path_for(resource)
		"/users/#{resource.id}/ edit"
		
	end
end
