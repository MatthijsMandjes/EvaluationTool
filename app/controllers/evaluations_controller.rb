class EvaluationsController < ApplicationController

  # before_action :set_student, only: [:update, :edit]
  # before_action :set_evaluation, only: [:update, :edit]
  before_action :set_student, only: [:new, :create]


  def new
    @evaluation = Evaluation.new
    @colors = Evaluation.where(student_id: @student.id).pluck(:color)
    if(Evaluation.where(student_id: @student.id).present?)
      flash[:notice] = 'This student is already evaluated. Click the edit button if you want to edit your evaluation.'
    end
  end

  def edit

  end

  def create
    @current_date = Time.now.strftime("%Y-%m-%d")
    @evaluation = Evaluation.where(student_id: @student.id, evaluation_at: @current_date).first
    @color = params[:evaluation][:color]
    @student.update(evaluation_date: @current_date, last_color: @color )


    # @in_database = @updated_at.strftime("%Y-%m-%d")

    if(!@evaluation.present?)
      @evaluation = Evaluation.new(evaluation_params.merge(student_id: params[:student_id], evaluation_at: @current_date))
      if(@evaluation.save)
        if(!params[:next])
          redirect_to root_path, notice: @updated_at
        else
          @next = Student.where(group_id: @student.group_id).where("evaluation_date != ? OR evaluation_date IS ?", @current_date, nil).order(updated_at: :desc).pluck(:id).first
          if(@next.present?)
            redirect_to new_student_evaluation_path(@next), notice: @next
          else
            redirect_to group_path(@student.group_id), notice: "All students from this class are already evaluated"
          end
        end
      else
        render "new"
      end
    else
      redirect_to request.referrer, notice: "This student is already evaluated for today"
    end
  end

  def update
    @current_date = Time.now.strftime("%Y-%m-%d")
    @updated_at = @student.updated_at.strftime("%Y-%m-%d")
    if(@updated_at != @current_date)

      @colors = Student.where(id: @student.id).pluck(:color)
      @form_color = params[:student][:color]
      @colors[0] << @form_color

      if @student.update_attributes(evaluation_params.merge(color: @colors[0]))
        redirect_to group_path(@group.id)
      else
        render :edit
      end

    else
      redirect_to request.referrer, notice: "You already created this evaluation"
    end

  end

  def next

  end

  private


  def evaluation_params
    params.require(:evaluation).permit(:remark, :color, :student_id, :evaluation_at)
  end



  def set_student
    @student = Student.find(params[:student_id])
  end

  def set_evaluation
      @evaluation = Evaluation.find(params[:id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

end
