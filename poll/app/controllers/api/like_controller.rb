require 'digest/sha2'

module Api

  class Api::LikeController < ApplicationController
    def index

      t = (cookies['count'] || 1).to_i
      if t == 1
        ## session id を時刻をハッシュ化して設定
        cookies['SSID'] = Digest::SHA256.hexdigest Time.now.strftime("%c")
      end
      params['session_id'] = cookies['SSID']

      if t > 1
        @polling = Polling.find_by(session_id: cookies['SSID'])
        @polling.candidate_id = params['candidate_id']
      else
        poll = params.permit(:candidate_id, :session_id)
        @polling = Polling.new(poll)
      end

      cookies['count'] = t + 1

      ## DBに保存実行
      if @polling.save
        render json: @polling
      end
    end
  end
end