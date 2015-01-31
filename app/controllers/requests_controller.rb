class RequestsController < ApplicationController
  before_action :authenticate_coach!, except: [:create]

  def index
    @requests = Request.where( status:[1,2] )
  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      respond_to do |format|
        format.json{ render json: 'A Coach will be here shortly' }
      end
    else
      respond_to do |format|
        format.json{ render json: 'Something whent wrong, please try again' }
      end
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
