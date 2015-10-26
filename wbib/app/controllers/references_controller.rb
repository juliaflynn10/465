class ReferencesController < ApplicationController
  before_action :set_reference, only: [:edit, :update, :destroy]

  # GET /references
  # GET /references.json
  def index
    @topic = Topic.find params[:topic_id]
    @references = @topic.references
  end

  # GET /references/1
  # GET /references/1.json
  def show
  end

  # GET /references/new
  def new
    @topic = Topic.find params[:topic_id]
    @reference = @topic.references.new
  end

  # GET /references/1/edit
  def edit
  end

  # POST /references
  # POST /references.json
  def create
   @topic = Topic.find params[:topic_id] 
   @reference = @topic.references.new(reference_params)

   @reference.date = DateTime.now

    respond_to do |format|
      if @reference.save
        format.html { redirect_to topic_url(@topic), notice: 'Reference was successfully created.' }
        format.json { render :show, status: :created, location: topic_url(@topic) }
      else
        format.html { render :new }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /references/1
  # PATCH/PUT /references/1.json
  def update
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to topic_url(@reference.topic), notice: 'Reference was successfully updated.' }
        format.json { render :show, status: :ok, location: topic_url(@reference.topic) }
      else
        format.html { render :edit }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /references/1
  # DELETE /references/1.json
  def destroy
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to topic_url(@reference.topic), notice: 'Reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:URL, :date, :topic_id)
    end
end
