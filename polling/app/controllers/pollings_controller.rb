class PollingsController < ApplicationController
  before_action :set_polling, only: [:show, :update, :destroy]

  # GET /pollings
  def index
    @pollings = Polling.all

    render json: @pollings
  end

  # GET /pollings/1
  def show
    render json: @polling
  end

  # POST /pollings
  def create
    @polling = Polling.new(polling_params)

    if @polling.save
      render json: @polling, status: :created, location: @polling
    else
      render json: @polling.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pollings/1
  def update
    if @polling.update(polling_params)
      render json: @polling
    else
      render json: @polling.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pollings/1
  def destroy
    @polling.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_polling
      @polling = Polling.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def polling_params
      params.require(:polling).permit(:candidate_id)
    end
end
