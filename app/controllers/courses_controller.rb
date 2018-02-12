class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all

    authorize @courses, :index?

  end

  def new 
    @course = Course.new(instructor_id: current_user.id)

    authorize @course, :new?
  end

  def show
    @course = Course.find(params[:id])
    authorize @course, :show?
  end

  def apply
    @course = Course.find(params[:id])

    authorize @course, :apply?

    @course.users << current_user

    @course.save

    if @course.save
      redirect_to courses_path
    end
  end

  def create
    @course = Course.new(course_params)

    authorize @course, :create?

    if @course.save
      redirect_to root_path
    else
      render 'new'
    end
  end



  private def course_params
    params
      .require(:course)
      .permit(:name,
              :course_id
      ).merge(instructor: current_user)
  end
end
