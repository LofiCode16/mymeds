class ApplicationController < ActionController::Base

  def members
    @members = Member.where(user_id: current_user.id)
  end
end
