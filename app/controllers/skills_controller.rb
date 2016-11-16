class SkillsController < ApplicationController
  before_action :set_course
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def new
    @skill = @course.skills.build
  end

  def create
    @skill = @course.skills.build skill_params
    if @skill.save
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @skill = @course.skills.build skill_params
    if @skill.save
      redirect_to course_path(@course)
    else
      render :edit
    end
  end

  def destroy
    @skill.destroy
    redirect_to @course
  end

  private

  def set_course
    @course = Course.find params[:course_id]
  end

  def set_skill
    @course = @course.skills.find params[:id]
  end

  def skill_params
    params.require(:skill).permit(:name)
  end
end