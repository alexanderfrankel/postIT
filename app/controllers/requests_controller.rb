class RequestsController < ApplicationController
  before_action :authenticate_coach!

  def index
    @requests = Request.where( status:[1,2] ) 
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to root_path
    else
      flash[:error] = 'request culdnt be craated'
      redirect_to root_patht
    end 
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update(request_params)
      redirect_to root_path
    else
      flash[:error] = 'request couldnt be updated'
      render :edit
    end
  end

  private

  def request_params
    params.require(:request).permit(:student, :status, :location, :time_in, :time_out, :coach_id)
  end

end
