class WorkersController < ApplicationController
  def new
  	@worker = Worker.new
  	@locations = ["Pudong", "Huangpu", "Yangpu", "Xuhui", "Jingan", "Zhabei", "Minhang", "Putou"]
  end

  def create
  	@worker = Worker.new(worker_params)
  	@worker.owner = current_user
  	if @worker.save
  		redirect_to industry_path(@worker.industry)
  		flash[:notice] = "Thanks for adding a shifu!"
  	else 
  		render :new
  	end
  end


  private


  def worker_params
  	params.require(:worker).permit(:name, :wechat, :owner, :phone, :rate, :location, :industry_id)
  end
end
