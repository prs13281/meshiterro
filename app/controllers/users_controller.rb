class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
    # 上のは決められた数のデータ取得。下のは全て取得
    #@post_images = @user.post_images
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]) #ユーザーの取得
    @user.update(user_params) #ユーザーのアップデート
    redirect_to user_path(@user.id)   #ユーザーの詳細ページへのパス
  end


   #private

   def user_params
    params.require(:user).permit(:name, :profile_image)
   end

end
