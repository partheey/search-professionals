module ApplicationHelper
  def worker_signed_in?
    current_user.type == 'Worker'
  end
end
