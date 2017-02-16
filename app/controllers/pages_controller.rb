class PagesController < ApplicationController
  def index
    @message = Message.new
  end

  def index_spanish
    @message = Message.new
  end
end
