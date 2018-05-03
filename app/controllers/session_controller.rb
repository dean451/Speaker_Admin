class SessionController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    @session = current_user.sessions.build(session_params)
    if @session.save
      flash[:success] = "Session created!"
      redirect_to root_url
    else
      render 'static_pages/sessions'
    end
  end

  def destroy
  end

  private

    def session_params
      params.require(:session).permit(:content)
    end

end
