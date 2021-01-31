class PostsController < ApplicationController
  
  def index   # indexのアクションを定義した 
    @posts = Post.all.order(id: "DESC")   # すべてのレコードを@postに代入　orderメソッドでレコードの並び替え
  end  

  

  def create
    Post .create(content: params[content])
    redirect_to action: :index
  end

end
