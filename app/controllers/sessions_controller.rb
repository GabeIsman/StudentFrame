class SessionsController < ApplicationController

  def new

  end

  def create
    @active_user = User.authenticate( params[:email], params[:password] )
    if @active_user.nil?
      flash[:error] = "Incorrect user name or password"
      return redirect_to :controller => :sessions, :action => :new
    end
    session[:id] = @active_user.id
    flash[:notice] = "Successfully logged in"
    redirect_to :root
  end
  
  def destroy
    if @active_user.nil?
      flash[:error] = "You are not logged in"
      return redirect_to :root
    end
    flash[:notice] = "Successfully logged out."
    session[:id] = nil
    @active_user = nil
    redirect_to :root
  end

end
