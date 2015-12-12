class CourseUsersController < ApplicationController
  before_action :set_course_user, only: [:show, :edit, :update, :destroy]
  @set = 0
  # GET /course_users
  # GET /course_users.json
  def index
    @course = Course.find params[:course_id]
  end

  # GET /course_users/1
  # GET /course_users/1.json
  def show
  end

  # GET /course_users/new
  def new
    @course = Course.find params[:format]
    
       CourseUser.all.each do |cu|
	if  cu.user_id == current_user.id && @course.id == cu.course_id
		@curr_course_user = cu
        end
      end
	
	if !@course.course_users.include?(@curr_course_user)
		@course_user = @course.course_users.new
                @course_user.user_id = current_user.id
                @course.course_users.push(@course_user)
       else
                @course.course_users.delete(@curr_course_user).compact!
        end

	redirect_to courses_path
  end

  # GET /course_users/1/edit
  def edit
  end

  # POST /course_users
  # POST /course_users.json
  def create
    @course = Course.find params[:image_id]
    @course_user = @course.course_users.new(course_user_params)

    respond_to do |format|
      if @course_user.save
        format.html { redirect_to @course_user, notice: 'Course user was successfully created.' }
        format.json { render :show, status: :created, location: @course_user }
      else
        format.html { render :new }
        format.json { render json: @course_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_users/1
  # PATCH/PUT /course_users/1.json
  def update
    respond_to do |format|
      if @course_user.update(course_user_params)
        format.html { redirect_to @course_user, notice: 'Course user was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_user }
      else
        format.html { render :edit }
        format.json { render json: @course_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_users/1
  # DELETE /course_users/1.json
  def destroy
    @course_user.destroy
    respond_to do |format|
      format.html { redirect_to course_users_url, notice: 'Course user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_user
      @course_user = CourseUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_user_params
      params.require(:course_user).permit(:user_id, :course_id, :course_id, :seating_chart_id)
    end
end
