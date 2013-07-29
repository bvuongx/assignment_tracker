class ProjectsController < ApplicationController

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])

		if @project.save
			flash[:notice] = "Project has been created"
			redirect_to assignments_path
		else
			flash[:alert] = "Project has not been created"
			render :action => "new"
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(params[:project])
			flash[:notice] = "Project been updated"
		else
			flash[:alert] = "Project has not been updated"
			render :action => "new"
		end
	end
end
