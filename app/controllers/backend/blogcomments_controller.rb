class BlogcommentsController < InheritedResources::Base
def create
    @blog = Blog.find(params[:blog_id])
	@blogcomment = @blog.blogcomments.create(params[:blogcomment])
    redirect_to blog_path(@blog)
 end
 
 def destroy
    @blog = Blog.find(params[:blog_id])
	@blogcomment = @blog.blogcomments.find(params[:id])
    @blogcomment.destroy
    redirect_to blog_path(@blog)
  end



end
