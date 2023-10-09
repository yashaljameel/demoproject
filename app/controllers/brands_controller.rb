class BrandsController < ApplicationController

  #before_action filter
  before_action :document, only: :show
  def index
   @documnets = Documnet.all 
  end
  
  def show 

  end

  def new
    @documnet = Documnet.new
  end

  def create
    @documnet = Documnet.new(documnet_create_params)
    
    
    binding.pry
    
    if @documnet.save
      CrudNotificationMailer.create_notification(@documnet).deliver_now
      redirect_to brands_path
    else
      render ‘new’
    end
  end

  private
  def document
    @documnet = Documnet.find(params[:id])
  end
  
  def documnet_create_params
      params.require(:documnet).permit(:title, :description)
  end
end