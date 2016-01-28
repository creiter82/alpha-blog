class PagesController < ApplicationController

  def home
    # if logged in you'll be redirected to your articles page
    # else if not logged in you'll see the homepage with link to signup
    redirect_to articles_path if logged_in?
  end
  
  def about
    
  end

end