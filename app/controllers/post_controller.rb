class PostController < ApplicationController
  def new
    if request.post?
      @Post = Post.new
      @Post.user_id = session[:id]
      @Post.title = params[:title]
      @Post.content = params[:post]
      @Post.post_type = params[:post_type]
      @Post.privacy = params[:privacy]

      @Post.save
      redirect_to profile_path(session[:user])
    end
  end

  def show
    @Post = Post.find_by_id(params[:id])
    
  end

  def list
    @Threads = Post.find_by_sql("SELECT * FROM Posts WHERE post_type='thread' order by id ASC")
  end

  def edit
  end

  def delete
  end
end
