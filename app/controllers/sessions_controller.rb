class SessionsController < ApplicationController
  def new
  end
  def create
    clone = Clone.find_by(email: params[:session][:email].downcase)
    if clone && clone.authenticate(params[:session][:password])
      session[:clone_id] = clone.id
      redirect_to posts_path(clone.id)
    else
      flash[:danger] = 'Failed to login'
      render 'new'
  end
  end
  def destroy
    session.delete(:clone_id)
    flash[:notice] = 'You logged out'
    redirect_to new_session_path
  end
end
