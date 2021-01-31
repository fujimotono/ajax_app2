class PostsController < ApplicationController
  def index   # indexのアクションを定義した 
    @posts = Post.all   # すべてのレコードを@postに代入
  end  

  def new
  end

  def create
    Post .create(content: params[content])
  end
end
