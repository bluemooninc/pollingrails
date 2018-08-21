module Api
  class Api::RankingController < ApplicationController
    def index
      @ranking = Polling.find(Like.group(:candidate_id).order('count(candidate_id) desc').limit(9).pluck(:candidate_id))
      render json: @ranking
    end
  end
end