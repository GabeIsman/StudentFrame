class CmsPagesController < ApplicationController

  before_filter :require_login
  
  def cms_page
    render "cms_page"
  end
  
end
