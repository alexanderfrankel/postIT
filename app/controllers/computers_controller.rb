class ComputersController < ApplicationController
  before_action :authenticate_coach!, except: [:create]

  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
  end

  def create
    @computer = Computer.find_by(location: params[:request][:location])
    @computer.toggle_status
    respond_to do |format|
      format.json{ render json: 'A Coach will be here shortly' }
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

  def toggle
    @computer = Computer.find(params[:id])
    @computer.toggle_status
    render :nothing => true
  end

  private

  def request_params
    params.require(:request).permit(:student, :status, :location, :time_in, :time_out, :coach_id)
  end

end
