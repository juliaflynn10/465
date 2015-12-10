class SeatingChartsController < ApplicationController
  before_action :set_seating_chart, only: [:show, :edit, :update, :destroy]

  # GET /seating_charts
  # GET /seating_charts.json
  def index
    @seating_charts = SeatingChart.all
  end

  # GET /seating_charts/1
  # GET /seating_charts/1.json
  def show
  end

  # GET /seating_charts/new
  def new
    @seating_chart = SeatingChart.new
  end

  # GET /seating_charts/1/edit
  def edit
  end

  # POST /seating_charts
  # POST /seating_charts.json
  def create
    @seating_chart = SeatingChart.new(seating_chart_params)

    respond_to do |format|
      if @seating_chart.save
        format.html { redirect_to @seating_chart, notice: 'Seating chart was successfully created.' }
        format.json { render :show, status: :created, location: @seating_chart }
      else
        format.html { render :new }
        format.json { render json: @seating_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seating_charts/1
  # PATCH/PUT /seating_charts/1.json
  def update
    respond_to do |format|
      if @seating_chart.update(seating_chart_params)
        format.html { redirect_to @seating_chart, notice: 'Seating chart was successfully updated.' }
        format.json { render :show, status: :ok, location: @seating_chart }
      else
        format.html { render :edit }
        format.json { render json: @seating_chart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seating_charts/1
  # DELETE /seating_charts/1.json
  def destroy
    @seating_chart.destroy
    respond_to do |format|
      format.html { redirect_to seating_charts_url, notice: 'Seating chart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seating_chart
      @seating_chart = SeatingChart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seating_chart_params
      params.require(:seating_chart).permit(:course_id, :user_id, :seat_count, :course_id)
    end
end
