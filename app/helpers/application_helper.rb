module ApplicationHelper
  def current_user?(user)
    user && current_user == user
  end
end
