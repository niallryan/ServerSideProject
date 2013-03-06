class SessionsController < ApplicationController

  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:user_id] = user.id
      cookies.signed[:secure_user_id] = {secure: true, value: "secure#{user.id}"}
      redirect_to "http://localhost:3000/welcome/home", :notice => "Logged in successfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :action => 'new'
    end
  end

  def destroy
    reset_session
    cookies.delete(:secure_user_id)
    redirect_to root_path, :notice => "You successfully logged out"
  end

end