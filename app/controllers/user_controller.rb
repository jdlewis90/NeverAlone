class UserController < ApplicationController
  def index
  end

  def signup
    if request.post?

    @validate_username = User.find_by_username(params[:username])
    if @validate_username
      flash[:username] = "Sorry, this username is already taken."
      @error = true
    end

    if params[:username].length<4
      flash[:username] = "Username must be at least four characters."
      @error = true
    end

    @validate_email = User.find_by_email(params[:email])
    if @validate_username
      flash[:username] = "This email address is already registered."
      @error = true
    end

    if params[:email].length<1
      flash[:email] = "Please enter a valid e-mail address."
      @error = true
    end

    if params[:password].length<6
      flash[:password] = "Password must be at least six characters."
      @error = true
    end

    if !@error
      @user = User.new
      @user.username = params[:username]
      @user.password = params[:password]
      @user.email = params[:email]
      @user.save
      flash[:notice] = "Welcome #{@user.username}, your account has been created!"
      redirect_to root_path
    end

    end
  end

  def login
  end

  def profile
  end

  def settings
  end
end
