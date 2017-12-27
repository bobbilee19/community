class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    # case resource
    # when AdminUser
    #   #admin_root_path
    #   '/admin/dashboard'
    #   puts'in admin_root_path'
    # CHANGE eventually this to your events index and then you
    # click on the event you want to see
    events = current_user.events.last
    event_path(event)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
