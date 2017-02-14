class Teachers::SkillsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def index
    if params[:course_id]
      @course = current_user.courses.find params[:course_id]
      @skills = @course.skills
    else
      @skills = Skill.all
    end
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new skill_params
    if @skill.save
      redirect_to teachers_skill_path @skill
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @skill.update skill_params
      redirect_to teachers_skill_path @skill
    else
      render :edit
    end
  end

  def destroy
    @skill.destroy
    redirect_to teachers_skills_path
  end

  private

  def set_skill
    @skill = Skill.find params[:id]
  end

  def skill_params
    params.require(:skill).permit(:name, :course_id)
  end
end
