class ApplicationController < ActionController::Base
  protect_from_forgery

  def add_p_tags( content )
    content = "<p>" + content + "</p>"
    while content.index( "\n" )
      index = content.index( "\n" )
      content[index] = "</p><p>"
    end
    return content
  end
  
end
