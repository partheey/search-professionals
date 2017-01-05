class ProfessionsController < ApplicationController
  before_action :set_profession, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @professions = Profession.all
  end

  def show
  end

  def new
    @profession = Profession.new
  end

  def edit
  end

  def create
    @profession = Profession.new(profession_params)

    respond_to do |format|
      if @profession.save
        format.html { redirect_to @profession, notice: 'Profession was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @profession.update(profession_params)
        format.html { redirect_to @profession, notice: 'Profession was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @profession.destroy
    respond_to do |format|
      format.html { redirect_to professions_url, notice: 'Profession was successfully destroyed.' }
    end
  end

  private
    def set_profession
      @profession = Profession.find(params[:id])
    end

    def profession_params
      params.require(:profession).permit(:name, :profession_type_id)
    end
end
