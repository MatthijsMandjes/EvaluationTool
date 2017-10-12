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
    @group = Group.find(params[:id])
    @students = Student.where(group_id: @group.id).order(:updated_at)
  end

  private

  def group_params
      params.require(:group).permit(:batch, :start_date, :end_date)
  end

end
