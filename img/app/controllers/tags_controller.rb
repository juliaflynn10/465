class TagsController < ApplicationController
  before_action :set_tag, only: [:edit, :update, :destroy]


  # GET /tags/new
  def new
    @image = Image.find params[:image_id]
    @tag = @image.tags.new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
    @image = Image.find params[:image_id]
    @tag = @image.tags.new(tag_params)

      if @tag.save
         redirect_to image_url(@image) , notice: 'Tag was successfully created.'
      else
         render :new
    end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    if @tag.update(tag_params)
      redirect_to image_url(@tag.image), notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy
    redirect_to image_url(@tag.image) , notice: 'Tag was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:tag_string, :image_id)
    end
end
