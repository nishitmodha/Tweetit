class ProfilesController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!
  
  def show
    @tweets = User.find_by(username: params[:username]).tweets.order('created_at DESC')
  end
  


  private
  def set_user
    @user = User.find_by(username: params[:username])
   end
end
