class AdminsController < ApplicationController
  def index
    @admins = User.where(admin: true).paginate(page: params[:page])
  end
end
