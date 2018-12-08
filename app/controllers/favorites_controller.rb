class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.okiniiri(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to user_path(micropost.user)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.okiniiri_hazushi(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to user_path(micropost.user)
    
  end
end
