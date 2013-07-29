class AssignmentsController < ApplicationController
	
	def index
		@assignments = Assignment.all
	end

	def edit
		@assignment = Assignment.new(params[:id])
	end

	def new
		@assignment = Assignment.new
	end

	def create
		@assignment = Assignment.new(params[:assignment])
		if @assignment.save
			flash[:notice] = "Assignment has been created"
			redirect_to assignments_path
		else 
			flash[:alert] = "Assignment has not been created"
			redirect_to :action => "new"
		end
	end

	def destroy
	end
end
