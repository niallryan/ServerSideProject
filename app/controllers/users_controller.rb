class UsersController < ApplicationController

# before_filter :is_admin?
# causing an issue with Registration - if user tries to register they are redirected to login page
# unless they're logged in as admin
# which doesn't make any sense

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to products_path, :notice => 'User creation successful!'
    else
      render :action => 'new'

    end
  end

  def edit
    @title = "Edit Your Details"
    @user = User.find(session[:user_id])
    if request.post?
      if @user.update_attributes(params[:user])
        flash[:notice] = "Your details have been updated"
        redirect_to :action => :index
      end
    end
  end


  def index
    @user = User.all
  end

  def show
    @user = User.find(session[:user_id])
  end

  def profile
    @screen_name = params[:id]
    @title = "User Profile for #{@screen_name}"
    @user = User.find_by_screen_name(@screen_name)
  end


end
