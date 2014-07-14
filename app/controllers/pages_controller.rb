class PagesController < ApplicationController
  
  
  
  def home
  @blogs = Blog.order("created_at desc").limit(5)
  @photos = Photo.order("created_at desc").limit(6)
  end
  
  def mv
  end
  
  def posts
  @blogs = Blog.order("created_at desc").paginate :page => params[:page], :per_page => 5
  # @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  def images
  @photos = Photo.order("created_at desc").paginate :page => params[:page], :per_page => 6
  end
  
  def about
  end
  
  def backend
  authenticate_or_request_with_http_basic do |username, password|
    username == "dhh" && password == "secret"
	
  end  
  end
  
end
