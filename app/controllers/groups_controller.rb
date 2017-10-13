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


      @count_students = Student.where(group_id: @group.id).where("last_color IS NOT NULL").count
      if(@count_students != 0)
        @to_percentage = 100 / @count_students

        @count_green = Student.where(last_color: "green", group_id: @group.id).count
        @green = (Float(@to_percentage) * @count_green)

        @count_yellow = Student.where(last_color: "yellow", group_id: @group.id).count
        @yellow = (Float(@to_percentage) * @count_yellow)

        @count_red = Student.where(last_color: "red", group_id: @group.id).count
        @red = (Float(@to_percentage) * @count_red)
      end

      

  end

  private

  def group_params
      params.require(:group).permit(:batch, :start_date, :end_date)
  end

end
