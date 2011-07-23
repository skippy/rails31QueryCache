class PublicController < ActionController::Base
  protect_from_forgery

  rescue_from Mysql2::Error, :with => :no_database


  def no_database
    render :text => 'database not setup'
  end
  
  def index
    User.first
    render :text => 'hello world'
  end
end
