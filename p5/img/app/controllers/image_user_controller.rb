# This controller does not have a show function
# since ratings are shown by professor, it does not make sense to
# show a single rating

class ImageUsersController < ApplicationController
  before_action :set_image_user, only: [:edit, :update, :destroy]

  # GET /professors/:professor_id/ratings
  def index
    # index is now all the ratings for a single professor (not all the ratings)
    # the URL will contain the id of the current professor (:professor_id)
    # use the :professor_id parameter to find all the ratings
    @image_object = ImageObject.find params[:image_object_id]
    # the has_many function called in app/models/professor.rb created the 
    # function "ratings" which will return an array of all the ratings 
    # with the professor foreign key matching @professor
    @image_users = @image_object.image_users
  end

  # GET professors/:professor_id/ratings/new
  # Create a new rating in the context of a Professor object
  # that way the Rating's foreign key (professor_id) will be
  # initialized correctly.
  def new
    # since our the rating new path contains the professor's id
    # we can use params[:professor_id] to get that id
    @image_object = ImageObject.find params[:image_object_id]
    # This is similar to Rating.new, BUT it creates the new rating
    # in the context of a Professor object and sets the foreign key
    @image_user = @image_object.image_user.new
  end

  # GET /ratings/1/edit
  def edit
    # edit routes are not nested (we already know our professor's foreign_key)
  end

  # POST professors:/:professor_id/ratings
  # we need the professor's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new rating's professor
  # rails ensures that the URL has not be tampered with
  def create
    @image_object = ImageObject.find params[:image_object_id]
    @image_user = @ImageObject.image_users.new(image_user_params)

    if @image_user.save
      redirect_to image_object_image_users_url(@image_object) , notice: 'ImageUser was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ratings/1
  # updates don't have to be nested because the professor foreign key is already set
  # and cannot be changed by edit (note that professor_id is not permitted in rating_params())
  def update
    if @image_user.update(image_user_params)
      redirect_to image_object_image_users_url(@image_user.image_object), notice: 'ImageUser was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ratings/1
  def destroy
    @image_user.destroy
    redirect_to image_object_image_users_url(@image_user.image_object) , notice: 'ImageUser was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_user
      @image_user = ImageUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_user_params
      params.require(:image_user).permit(:image_object_id, :user_id)
    end
end
