# This controller does not have a show function
# since links are shown by fingerprint, it does not make sense to
# show a single link

class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :update, :destroy]

  # GET /fingerprints/:fingerprint_id/links
  def index
    # index is now all the links for a single fingerprint (not all the links)
    # the URL will contain the id of the current fingerprint (:fingerprint_id)
    # use the :fingerprint_id parameter to find all the links
    @fingerprint = Fingerprint.find params[:fingerprint_id]
    # the has_many function called in app/models/fingerprint.rb created the 
    # function "links" which will return an array of all the links 
    # with the fingerprint foreign key matching @fingerprint
    @links = @fingerprint.links
  end

  # GET fingerprints/:fingerprint_id/links/new
  # Create a new link in the context of a Fingerprint object
  # that way the Link's foreign key (fingerprint_id) will be
  # initialized correctly.
  def new
    # since our the link new path contains the fingerprint's id
    # we can use params[:fingerprint_id] to get that id
    @fingerprint = Fingerprint.find params[:fingerprint_id]

    # This is similar to Link.new, BUT it creates the new link
    # in the context of a Fingerprint object and sets the foreign key
    @link = @fingerprint.links.new
  end

  # GET /links/1/edit
  def edit
    # edit routes are not nested (we already know our fingerprint's foreign_key)
  end

  # POST fingerprints:/:fingerprint_id/links
  # we need the fingerprint's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new link's fingerprint
  # rails ensures that the URL has not be tampered with
  def create
    @fingerprint = Fingerprint.find params[:fingerprint_id]
    @link = @fingerprint.links.new(link_params)

    if @link.save
      redirect_to fingerprint_links_url(@fingerprint) , notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /links/1
  # updates don't have to be nested because the fingerprint foreign key is already set
  # and cannot be changed by edit (note that fingerprint_id is not permitted in link_params())
  def update
    if @link.update(link_params)
      redirect_to fingerprint_links_url(@link.fingerprint), notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
    redirect_to fingerprint_links_url(@link.fingerprint) , notice: 'Link was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:address)
    end
end
