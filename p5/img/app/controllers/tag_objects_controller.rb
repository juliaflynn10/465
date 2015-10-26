class TagObjectsController < ApplicationController
  before_action :set_tag_object, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tag_objects = TagObject.all
    respond_with(@tag_objects)
  end

  def show
    respond_with(@tag_object)
  end

  def new
    @tag_object = TagObject.new
    respond_with(@tag_object)
  end

  def edit
  end

  def create
    @tag_object = TagObject.new(tag_object_params)
    @tag_object.save
    respond_with(@tag_object)
  end

  def update
    @tag_object.update(tag_object_params)
    respond_with(@tag_object)
  end

  def destroy
    @tag_object.destroy
    respond_with(@tag_object)
  end

  private
    def set_tag_object
      @tag_object = TagObject.find(params[:id])
    end

    def tag_object_params
      params.require(:tag_object).permit(:tag_string, :image_id)
    end
end
