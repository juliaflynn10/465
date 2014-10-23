# This controller does not have a show function
# since links are shown by professor, it does not make sense to
# show a single link

class LinksController < ApplicationController
  before_action :set_link, only: [:edit, :update, :destroy]

  # GET /professors/:professor_id/links
  def index
    # index is now all the links for a single professor (not all the links)
    # the URL will contain the id of the current professor (:professor_id)
    # use the :professor_id parameter to find all the links
    @professor = Professor.find params[:professor_id]
    # the has_many function called in app/models/professor.rb created the 
    # function "links" which will return an array of all the links 
    # with the professor foreign key matching @professor
    @links = @professor.links
  end

  # GET professors/:professor_id/links/new
  # Create a new link in the context of a Professor object
  # that way the Link's foreign key (professor_id) will be
  # initialized correctly.
  def new
    # since our the link new path contains the professor's id
    # we can use params[:professor_id] to get that id
    @professor = Professor.find params[:professor_id]

    # This is similar to Link.new, BUT it creates the new link
    # in the context of a Professor object and sets the foreign key
    @link = @professor.links.new
  end

  # GET /links/1/edit
  def edit
    # edit routes are not nested (we already know our professor's foreign_key)
  end

  # POST professors:/:professor_id/links
  # we need the professor's key in the URL to make sure that someone 
  # isn't trying to hack the id of the new link's professor
  # rails ensures that the URL has not be tampered with
  def create
    @professor = Professor.find params[:professor_id]
    @link = @professor.links.new(link_params)

    if @link.save
      redirect_to professor_links_url(@professor) , notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /links/1
  # updates don't have to be nested because the professor foreign key is already set
  # and cannot be changed by edit (note that professor_id is not permitted in link_params())
  def update
    if @link.update(link_params)
      redirect_to professor_links_url(@link.professor), notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
    redirect_to professor_links_url(@link.professor) , notice: 'Link was successfully destroyed.'
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
