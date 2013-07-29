class AssignmentsController < ApplicationController

	def index
		@assignments = Assignment.all
	end

	def edit
		@assignment = Assignment.find(params[:id])
	end

	def update
		@assignment = Assignment.find(params[:id])
			if @assignment.update_attributes(params[:assignment])
				flash[:notice] = "Assignment has been updated"
				redirect_to assignments_path
			else
				flash[:alert] = "Assignment has not been updated"
				render :action => "edit"
			end
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
			render :action => "new"
		end
	end

	def destroy
		@assignment = Assignment.find(params[:id])
			@assignment.destroy
				flash[:notice] = "Assignment has been deleted"
				redirect_to assignments_path
	end
end
