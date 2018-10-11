class InitialsController < ApplicationController
  def index
    session[:group_id] = nil
  end

  def about
  end
end
