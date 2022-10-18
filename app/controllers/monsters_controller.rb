class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new

    render :new
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to edit_monster_path(@monster)
    else
      render :new, status: :see_other
    end
  end

  def edit
    @monster = Monster.find(params[:id])

    render :edit
  end

  def update
    @monster = Monster.find(params[:id])
    if @monster.update(monster_params)
      redirect_to @monster
    else
      render :new, status: :see_other
    end
  end

  def monster_params
    params.require(:monster).permit(:name, :description, :phone, :birthdate)
  end
end
