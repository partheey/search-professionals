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
    if @user.update(worker_params)
      flash[:success] = 'Your profile has been successfully updated !'
      redirect_to edit_profile_path
    else
      render :edit_profile
    end
  end

  private

  def search_params
    params[:profession_ids].nil? ? Profession.all.pluck(:id) : params[:profession_ids]
  end

  def worker_params
    return params.require(:worker).permit(:firstname, :lastname, :email, profession_ids: []) if params.include?(:worker)
    return params.require(:customer).permit(:firstname, :lastname, :email, profession_ids: []) if params.include?(:customer)
    return params.require(:admin).permit(:firstname, :lastname, :email, profession_ids: []) if params.include?(:admin)
  end
end
