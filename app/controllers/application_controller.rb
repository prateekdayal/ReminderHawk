# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  before_filter :set_timezone

  include ExceptionNotification::Notifiable


  include AuthenticatedSystem

  def set_timezone
    # For now
    Time.zone = "New Delhi"
  end
end
