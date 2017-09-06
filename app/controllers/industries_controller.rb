class IndustriesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]

	def index 
		@industries = Industry.all
		if params[:search]
			@industries = Industry.search(params[:search])
		else
			@industries = Industry.all
		end
	end

	def show
		@industry = Industry.find(params[:id])
	end



end
