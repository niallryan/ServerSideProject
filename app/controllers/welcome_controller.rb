class WelcomeController < ApplicationController
  def home
    @user = current_user
  end

  def thank_you
  end

  def register
    @user = User.new(params[:user])
    if @user.save
      redirect_to products_path, :notice => 'User creation successful!'
    else
      render :action => 'register'
    end
  end

end
