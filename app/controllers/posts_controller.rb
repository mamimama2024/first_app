class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all
  end

  def new #新規投稿ページを表示するリクエストに対応して動くs
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
