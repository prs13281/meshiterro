class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

# 投稿データの保存
  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    if@post_image.save
    redirect_to post_images_path
    else
    render :new
    end
  end


  def index
    @post_images = PostImage.page(params[:page])
    # 決められた数のデータを新しい順に取得するのが上
    # 全て取得するのが下
    #@post_images = PostImage.all
  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end

  def destroy
    @post_image = PostImage.find(params[:id])#データ（レコード）を１件取得
    @post_image.destroy #データを削除
    redirect_to post_images_path #投稿画面にリダイレクト
  end

  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
