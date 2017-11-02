class TasksController < ApplicationController
	before_action :set_task, only: [:show, :edit, :update, :destroy]

	def index
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end

	def show
	end

	def edit
	end

	private

	def set_task
		@task = Task.find(params[:id])
	end

end
