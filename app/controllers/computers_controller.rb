class ComputersController < ApplicationController
  before_action :authenticate_coach!, except: [:create]

  def index
    @computers = Computer.where( status:[1,2] )
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def create
    @computer = Computer.new(request_params)
    if @computer.save
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
    @computer = Computer.find(params[:id])
  end

  def update
    @computer = Computer.find(params[:id])
    if @computer.update(request_params)
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
