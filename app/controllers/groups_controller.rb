class GroupsController < ApplicationController


  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if(@group.save)
      redirect_to @group
    else
      render "new"
    end
  end

  def show
    @current_date = Time.now.strftime("%Y-%m-%d")
    @group = Group.find(params[:id])
    @students = Student.where(group_id: @group.id).order(updated_at: :desc)
    @evaluations = Evaluation.all

    @count_students = Student.where(group_id: @group.id).count
    @count_green = Student.where(last_color: "green").count
    @green = Float(@count_students) / @count_green * 10

    @count_yellow = Student.where(last_color: "yellow").count
    @yellow = Float(@count_students) / @count_yellow * 10

    @count_red = Student.where(last_color: "red").count
    @red = Float(@count_students) / @count_red * 10

  end

  private

  def group_params
      params.require(:group).permit(:batch, :start_date, :end_date)
  end

end
