class MainsController < ApplicationController

skip_before_action :verify_authenticity_token

# protected

# 	def after_sign_up_path_for(resource)
#   		if '/customers/sign_up'
#   		  redirect_to '/profile/individuals'
#   		else 
#   		  redirect_to '/profile/businesses'
# 	end

# end

def index
	# @allcustomers = Customer.all.order(lastname: :asc)
	# @allconflicts = Conflict.order(:created_at)
	# @allbusinesses = Business.all.order(businessname: :asc) 

	# @customer1 = Customer.where(customer_id: 1).conflicts

end

def new
end

def create

# 	before_action :authenticate_customer!
# before_action :authenticate_business!

	if user_session = Customer.find_by(email: params[:email], encrypted_password: params[:password])
		   redirect_to '/profiles/individual'
	
		elsif user_session = Business.find_by(email: params[:email], encrypted_password: params[:password])
		   redirect_to '/profiles/business'

		# flash[:notice] = 'Invalid password. Please try again!'
		else
			redirect_to '/'
		end
end

def show
end

end