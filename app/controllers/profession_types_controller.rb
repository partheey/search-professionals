class ProfessionTypesController < ApplicationController
  before_action :set_profession_type, only: [:show, :edit, :update, :destroy]

  def index
    @profession_types = ProfessionType.all
  end

  def show
  end

  def new
    @profession_type = ProfessionType.new
  end

  def edit
  end

  def create
    @profession_type = ProfessionType.new(profession_type_params)

    respond_to do |format|
      if @profession_type.save
        format.html { redirect_to @profession_type, notice: 'Profession type was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @profession_type.update(profession_type_params)
        format.html { redirect_to @profession_type, notice: 'Profession type was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @profession_type.destroy
    respond_to do |format|
      format.html { redirect_to profession_types_url, notice: 'Profession type was successfully destroyed.' }
    end
  end

  private
    def set_profession_type
      @profession_type = ProfessionType.find(params[:id])
    end

    def profession_type_params
      params.require(:profession_type).permit(:title)
    end
end
