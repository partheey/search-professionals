class HomeController < ApplicationController
  def welcome
  end

  def find_workers
    @workers = Worker.with_professions(search_params)
  end

  def edit_profile
    @user = User.find(params[:id])
  end

  def update_profile
    @user = User.find(params[:id])
    @user.update(worker_params)
  end

  private

  def search_params
    params[:profession_ids].nil? ? Profession.all.pluck(:id) : params[:profession_ids]
  end

  def worker_params
    params.require(:worker).permit(:firstname, :lastname, :email, profession_ids: [])
  end
end
