class RequestsController < ApplicationController
  before_action :authenticate_coach!

  def index
  end
end
