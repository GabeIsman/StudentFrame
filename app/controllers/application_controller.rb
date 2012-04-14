class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :active_user

  private

  def active_user
    @active_user = User.find(session[:id]) rescue nil
  end

  def require_login
    active_user unless @active_user
    if @active_user.nil? 
      flash[:error] = "You must be logged in to see that page"
      return redirect_to :controller => :sessions, :action => :new
    end
  end

  def add_p_tags( content )
    content = "<p>" + content + "</p>"
    while content.index( "\n" )
      index = content.index( "\n" )
      content[index] = "</p><p>"
    end
    return content
  end
  
end
