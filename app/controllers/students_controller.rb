class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :destroy, :update, :evaluation, :evaluation_update]
  before_action :set_group, only: [:random, :new, :edit, :destroy, :update, :evaluation, :evaluation_update]

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
    if @student.update_attributes(student_params.merge(group_id: @group.id))
      redirect_to group_path(@group.id)
    else
      render :edit
    end
  end

  def random
    @check = Evaluation.where(group_id: @group.id)
    if(@check.present?)
      loop do
        @color_student = rand((0.0)..(1.0)).round(2)
        if(@color_student >= 0 && @color_student <= 0.17)
          @color = "green"
        elsif(@color_student > 0.17 && @color_student <= 0.50)
          @color = "yellow"
        elsif(@color_student > 0.50 && @color_student <= 1)
          @color = "red"
        end
        @check = Evaluation.where(color: @color, group_id: @group.id)
        if(@check.present?)
          break
        end
      end

      @student_ids = []
      @students = Student.where(group_id: @group.id).pluck(:id)

        @students.each do |id|
          @check = Evaluation.where(student_id: id).pluck(:color).last

          if @check == @color
            @student_ids << id
          end
        end

      @student_list = Student.where(id: @student_ids)
      @random_student = @student_list.sample

    else
      # no evaluations yet
      @students = Student.where(group_id: @group.id).pluck(:id)
      @student_list = Student.where(id: @students)
      @random_student = @student_list.sample
    end
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
      params.require(:student).permit(:full_name, :image, :batch, :group_id)
  end

  def evaluation_params
      params.require(:student).permit(:remark)
  end

  # ALGORITHM PART! As a Teacher, from the class view I can click a button ASK A question
  #  . It shows me the name and picture of a random student to ask a
  # question. Not entirely random though: RED students get ~50% of the questions
  # YELLOW students ~33%, and GREEN students ~17%.
end
