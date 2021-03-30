class DayPacksController < ApplicationController
  def new
    @day_pack = DayPack.new
  end

  def create
    @day_pack = DayPack.new(day_pack_params)
    if @day_pack.save
      flash[:success] = "DayPack successfully created"
      redirect_to @day_pack
    else
      flash[:error] = "Something went wrong"
      render @day_pack
    end
  end

  def index
    @day_packs = DayPack.all
  end

  def show
    @day_pack = DayPack.find(params[:id])
    @tasks = @day_pack.tasks.all
  end

  private

  def day_pack_params
    params.require(:day_pack).permit(:title)
  end
end
