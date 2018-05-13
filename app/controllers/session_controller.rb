class SessionController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy


  def create
    @session = current_user.sessions.build(session_params)
    if @session.save
      flash[:success] = "Session created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/sessions'
    end
  end

  def destroy
    @session.destroy
    flash[:success] = "Session deleted"
    redirect_to request.referrer || root_url
  end

  private

    def session_params
      params.require(:session).permit(:content)
    end

    def correct_user
      @session = current_user.sessions.find_by(id: params[:id])
      redirect_to root_url if @session.nil?
    end

end
