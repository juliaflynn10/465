class ImageObjectsController < ApplicationController
  before_action :set_image_objects, only: [:show, :edit, :update, :destroy]

  # GET /professors
  def index
    @image_objects = ImageObjects.all
  end

  # GET /professors/1
  def show
  end

  # GET /professors/new
  def new
    @image_object = ImageObjects.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST /professors
    @image_object = ImageObject.new(image_object_params)
    @image_object.generate_filename
    @image_object.user = current_user

    @uploaded_io = params[:image][:uploaded_file]

    File.open(Rails.root.join('public', 'images', @image_object.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end

    if @image_object.save
      redirect_to @image_object, notice: 'ImageObject was successfully created.'
    else
      render :new
    end
  end

  #update
  def update
    if @image_object.update(image_object_params)
      redirect_to @image_object, notice: 'ImageObject was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /professors/1
  def destroy
    @image_object.destroy
    redirect_to image_objects_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_object
      @image_object = ImageObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_params
      params.require(:professor).permit(:first, :last, :university)
    end
end
