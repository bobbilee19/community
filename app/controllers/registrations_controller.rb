class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def edit
    super
  end

  def update
    super
    byebug
    image.attach(params[:user][:image])
  end

  def create
    super
  end

  def destroy
    super
  end
end
