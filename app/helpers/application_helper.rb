module ApplicationHelper
  def current?(current_url)
    params[:id].include?(current_url)
  end
end
