class ImageUsersController < ApplicationController
  before_action :set_image_user, only: [:edit, :update, :destroy]

  # GET /image_users/new
  def new
    @image = Image.find params[:image_id]
    @image_user = @image.image_users.new
  end

  # GET /image_users/1/edit
  def edit
  end

  # POST /image_users
  # POST /image_users.json
  def create
    @image = Image.find params[:image_id]
    @image_user = @image.image_users.new(image_user_params)

      if @image_user.save
        redirect_to image_url(@image), notice: 'Image user was successfully created.' 
      else
         render :new
      end
  end

  # PATCH/PUT /image_users/1
  # PATCH/PUT /image_users/1.json
  def update
      if @image_user.update(image_user_params)
        redirect_to image_url(@image_user.image), notice: 'Image user was successfully updated.'
      else
        render :edit
      end
  end
  # DELETE /image_users/1
  # DELETE /image_users/1.json
  def destroy
    @image_user.destroy
    redirect_to image_url(@image_user.image), notice: 'Image user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_user
      @image_user = ImageUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_user_params
      params.require(:image_user).permit(:image_id, :user_id)
    end
end
