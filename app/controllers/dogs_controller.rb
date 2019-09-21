class DogsController < ApplicationController

	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	def create
		Dog.create(dog_params)
		redirect_to root_path
	end
	
	def show
		@dog = Dog.find(params[:id])
	end

	private

	def dog_params
		params.require(:dog).permit(:name, :breed, :age, :description)
	end

end
