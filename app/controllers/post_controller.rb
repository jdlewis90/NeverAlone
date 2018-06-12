class PostController < ApplicationController
  def new
    if request.post?
      @Post = Post.new
      @Post.user_id = session[:id]
      @Post.content = params[:post]

      if params[:commit]=="Post to profile"
        @Post.post_type = "post"
      else
        @Post.post_type = "thread"      
      end

      @Post.save
      redirect_to profile_path(session[:user])
    end
  end

  def list
  end

  def edit
  end

  def delete
  end
end
