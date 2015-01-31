class RequestsController < ApplicationController
  before_action :authenticate_coach!

  def index
    @requests = Request.where( status: 1 ) 
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
  end

  def update
  end
end
