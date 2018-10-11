class MypagesController < ApplicationController
  def index
    session[:group_id] = nil
    @name = User.find_by(id: session[:user_id])
  end
end
