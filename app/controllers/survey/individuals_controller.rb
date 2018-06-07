 module Survey
 class IndividualsController < ApplicationController

 	before_action :create_client, only: [:create]

 	def index
 	end
 	
#new_survey_individual GET/survey/individuals/new(.:format)  survey/individuals#new
	def new
		# @addcustomer = Customer.new
		# @addconflict = Conflict.new
	end

	def create
		#find out how to use #{params[:twitter_handle]}
		#Want to create variable that gets business name
		#Call business 
		@client.update('test app message c/o @NadiaBCarmon')
		# @addcustomer = Customer.create(customer_params)
		# @addconflict = Conflict.create(conflict_params)
	end

	# def edit
	# 	@editcustomer = Customer.find(params[:id])
	# 	@editconflict = Conflict.find(params[:id])
	# end


	# 	def show
	# 	@viewcohorts = Cohort.all.order(cohort_name: :asc)
	# 	# render plain: params[:addstudent].inspect
	# end

	# def update
	# 		@updatecustomer = Customer.find(params[:id])
	# 	if @updatecustomer.update(customer_params)
	# 		# flash[:notice] = "Article was successfully updated"
	# 		redirect_to '/profile/individuals'
	# 	else 
	# 		render 'edit'
	# 	end
	# end

	# def destroy
	# 	Customer.find(params[:id]).destroy
	# 	redirect_to '/'
	# end

 	# private
	 	def customer_params
		 params.require(:customer).permit(:firstname, :lastname)
	 	end

	 	def conflict_params
		 params.require(:conflict).permit(:customer_survey)
	 	end

	 	def create_client
	      @client = Twitter::REST::Client.new do |config|
	        config.consumer_key        = ENV['TWITTER_KEY']
	        config.consumer_secret     = ENV['TWITTER_SECRET']
	        config.access_token        = ENV['ACCESS_TOKEN']
	        config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
      		end
    	# end

	 end


  end
end