class Api::V1::MessagesController < ApplicationController
  def index
    message = Message.order('RANDOM()').first
    render json: { data: message.msg }
  end
end
