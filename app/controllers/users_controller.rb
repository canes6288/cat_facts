class UsersController < ApplicationController
  def show
    @favorites = current_user.facts
  end
end
