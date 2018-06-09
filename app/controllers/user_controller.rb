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
      flash[:email] = "This email address is already registered."
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

      session[:user] = @User.username
      flash[:notice] = "Welcome #{@user.username}, your account has been created!"
      redirect_to root_path
    end

    end
  end

  def login
    if request.post?

      @username = params[:user]
      @password = params[:pass]

      @valid_user = User.find_by_username_and_password(@username, @password)

      if !@valid_user
        flash[:error] = "Username or password is incorrect."
      else
        session[:user] = @username
        flash[:notice] = "Welcome back, #{@username}"
        if session[:redirect]
          redirect_to root_path
        else
          
        end
      end
    end
  end

  def profile
    @User = User.find_by_username(params[:username])

    if @User
      @username = @User.username
    else
      @username = "Not found"
      @intro = "The user could not be found, or maybe their profile is private"
    end
  end

  def edit
    @header = "Edit Profile"
    @User = User.find_by_username(session[:user])

    if @User

      if request.post?

        if params[:profilePic].length<180
        @User.avatar = params[:profilePic]
        @User.intro = params[:intro]
        @User.location = params[:location]
        @User.dob = params[:dob]
        @User.save
        session[:avatar] = @User.avatar
        flash[:notice] = "Profile has been updated!"
        end
      end

    else
      session[:redirect] = profile_edit_path
      flash[:notice] = "You must be logged in to do this"
      redirect_to login_path
    end
  end

  def settings
  end

  def logout
    session[:user] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to root_path
  end

end
