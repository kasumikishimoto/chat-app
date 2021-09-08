class RoomsController < ApplicationController
  def new #チャットルームの新規作成なのでnewアクション
    @room = Room.new
  end
end
