class StudentsController < ApplicationController

	def new
		@student = Student.new
	end

	def create
		@student = Student.new(params[:student])

		if @student.save
			flash[:notice] = "Student has been created"
			redirect_to assignments_path
		else 
			flash[:alert] = "Student has not been created"
			redirect_to :action => "new"
		end
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])

		if @student.update_attributes(params[:student])
			flash[:notice] = "Student been updated"
		else
			flash[:alert] = "Student has not been updated"
			redirect_to :action => "new"
		end
	end
end
