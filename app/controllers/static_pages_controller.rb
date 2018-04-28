class StaticPagesController < ApplicationController
  def sessions
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
