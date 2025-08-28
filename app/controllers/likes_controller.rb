class LikesController < ApplicationController
    before_action :logged_in_user

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.likes.create(micropost: @micropost)
    redirect_to @micropost
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.likes.find_by(micropost: @micropost).destroy
    redirect_to @micropost
  end
end
