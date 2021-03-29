class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
    @day_pack = DayPack.find(params[:day_pack_id])
    @task.day_pack = @day_pack
    @task.save!
    if @task.save
      flash[:success] = "Task successfully created"
      redirect_to @task.day_pack
    else
      flash[:error] = "Something went wrong"
      redirect_to @task.day_pack
    end
  end

  private

  def task_params
    params.require(:task).permit(:name, :duration)
  end
  
  
  
end
