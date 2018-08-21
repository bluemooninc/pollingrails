module Api
  class Api::LikeController < ApplicationController
    def index
      poll = params.permit(:candidate_id, :session_id)
      @polling = Polling.new(poll)
      if @polling.save
        render json: @polling
      else
        render json: @polling
      end
    end
  end
end