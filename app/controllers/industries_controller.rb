class IndustriesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]

	def index 
		@industries = Industry.all
	end

	def show
		@industry = Industry.find(params[:id])
	end



end
