class StaticPagesController < ApplicationController
  def sessions
    if logged_in?
      @session = current_user.sessions.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
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
