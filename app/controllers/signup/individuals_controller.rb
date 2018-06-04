module Signup
 class IndividualsController < ApplicationController

 	def index
 	end
 	
	def new
		@addcustomer = Customer.new
		@addconflict = Conflict.new
	end

	def create
		@addcustomer = Customer.create(customer_params)
		@addconflict = Conflict.create(conflict_params)
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

 	# private - might not work because of devise
	 	def customer_params
		 params.require(:customer).permit(:firstname, :lastname)
	 	end

	 	def conflict_params
		 params.require(:conflict).permit(:customer_survey)
	 	end
	 # end


  end
end