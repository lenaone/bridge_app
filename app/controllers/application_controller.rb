class ApplicationController < ActionController::Base
  def current_user
    User.find_by(id: session[:user_id])
  end

  def render_404
    raise ActionController::RoutingError.new('Not Found')
  end

end
