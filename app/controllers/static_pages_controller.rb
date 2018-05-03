class StaticPagesController < ApplicationController
  def sessions
    @session = current_user.sessions.build if logged_in?
  end

  def csas
  end

  def staff
    @users = User.all
  end

  def about
  end

  def contact
  end

end
