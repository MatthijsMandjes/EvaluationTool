class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :destroy, :update, :evaluation]
  before_action :set_group, only: [:edit, :destroy, :update, :evaluation]

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params.merge(group_id: params[:group_id]))
    if(@student.save)
      redirect_to root_path
    else
      render "new"
    end
  end

  def edit

  end

  def update
    if @student.update_attributes(student_params)
      redirect_to group_path(@group.id)
    else
      render :edit
    end
  end

  def evaluation

  end

  def destroy
    redirect_to group_path(@group.id) if(@student.destroy)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end


  def student_params
      params.require(:student).permit(:full_name, :image, :color, :batch, :group_id)
  end


end
