class PhotocommentsController < InheritedResources::Base

def create
    @photo = Photo.find(params[:photo_id])
	@photocomment = @photo.photocomments.create(params[:photocomment])
    redirect_to photo_path(@photo)
 end
 
 def destroy
    @photo = Photo.find(params[:blog_id])
	@photocomment = @photo.photocomments.find(params[:id])
    @photocomment.destroy
    redirect_to photo_path(@photo)
  end

end