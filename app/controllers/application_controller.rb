class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    # case resource
    # when AdminUser
    #   #admin_root_path
    #   '/admin/dashboard'
    #   puts'in admin_root_path'
    # CHANGE eventually this to your events index and then you
    # click on the event you want to see
    event = current_user.events.last
    event_path(event)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :first_name,
      :last_name,
      :title,
      :gender,
      :city,
      :state,
      :country,
      :personal_website,
      :instagram_handle,
      :twitter_handle,
      :workshop,
      :speaker,
      :business,
      :business_name,
      :business_website,
    ])
  end
end
