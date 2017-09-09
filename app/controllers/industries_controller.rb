class IndustriesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]

	def index 
		if params[:search]
			@industries = Industry.search(params[:search])
		else
			@industries = Industry.all
		end
	end

	def show
		@industry = Industry.find(params[:id])
		if params[:search]
			@workers = @industry.workers.search(params[:search])
		else
			@workers = @industry.workers.all
		end

	end



end
