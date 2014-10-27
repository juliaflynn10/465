class FingerprintsController < ApplicationController
  before_action :set_fingerprint, only: [ :edit, :update, :destroy]

  # GET /fingerprints
  def index
    @fingerprints = Fingerprint.all
  end

  # GET /fingerprints/1
  def show
   if params[:id]
	@fingerprint = Fingerprint.find(params[:id])
   elsif params[:name]
        @fingerprint = Fingerprint.find(Fingerprint.where("name like ?", params[:name]))
   end
   @site = @fingerprint.sites.new
  end

  # GET /fingerprints/new
  def new
    @fingerprint = Fingerprint.new
    @fingerprint.sites.new
  end

  # GET /fingerprints/1/edit
  def edit
  end

  # POST /fingerprints
  def create
  # MAGIC SPOT
  # Since the Professor "has_many" ratings, the new function looks
  # for Ratings parameters in the given parameters.  If it finds 
  # them it will also create one (or more) new Rating objects 
   @fingerprint = Fingerprint.new(fingerprint_params)

    if @fingerprint.save
      redirect_to @fingerprint, notice: 'Fingerprint was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fingerprints/1
  def update
    if @fingerprint.update(fingerprint_params)
      redirect_to @fingerprint, notice: 'Fingerprint was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fingerprints/1
  def destroy
    @fingerprint.destroy
    redirect_to fingerprints_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fingerprint
      @fingerprint = Fingerprint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fingerprint_params
      params.require(:fingerprint).permit(:name, :description, sites_attributes: [:url])
    end
end
