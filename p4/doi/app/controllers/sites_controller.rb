# This controller does not have a show function
# since sites are shown by fingerprint, it does not make sense to
# show a single site

class SitesController < ApplicationController
  before_action :set_site, only: [:edit, :update, :destroy]

  # GET /fingerprints/:fingerprint_id/sites
  def index
    # index is now all the sites for a single fingerprint (not all the sites)
    # the URL will contain the id of the current fingerprint (:fingerprint_id)
    # use the :fingerprint_id parameter to find all the sites
    @fingerprint = Fingerprint.find params[:fingerprint_id]
    # the has_many function called in app/models/fingerprint.rb created the 
    # function "sites" which will return an array of all the sites 
    # with the fingerprint foreign key matching @fingerprint
    @sites = @fingerprint.sites
  end

  # GET fingerprints/:fingerprint_id/sites/new
  # Create a new site in the context of a Fingerprint object
  # that way the Site's foreign key (fingerprint_id) will be
  # initialized correctly.
  def new
    # since our the site new path contains the fingerprint's id
    # we can use params[:fingerprint_id] to get that id
    @fingerprint = Fingerprint.find params[:fingerprint_id]

    # This is similar to Site.new, BUT it creates the new site
    # in the context of a Fingerprint object and sets the foreign key
    @site = @fingerprint.sites.new
  end

  # GET /sites/1/edit
  def edit
    # edit routes are not nested (we already know our fingerprint's foreign_key)
  end

  # POST fingerprints:/:fingerprint_id/sites
  # we need the fingerprint's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new site's fingerprint
  # rails ensures that the URL has not be tampered with
  def create
    @fingerprint = Fingerprint.find params[:fingerprint_id]
    @site = @fingerprint.sites.new(site_params)

    if @site.save
      redirect_to fingerprint_url(@fingerprint) , notice: 'Site was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sites/1
  # updates don't have to be nested because the fingerprint foreign key is already set
  # and cannot be changed by edit (note that fingerprint_id is not permitted in site_params())
  def update
    if @site.update(site_params)
      redirect_to fingerprint_url(@site.fingerprint), notice: 'Site was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sites/1
  def destroy
    @site.destroy
    redirect_to fingerprints_url(@site.fingerprint) , notice: 'Site was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.require(:site).permit(:site, :doi)
    end
end
