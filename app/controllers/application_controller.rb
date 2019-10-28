class ApplicationController < ActionController::Base
before_action :members

  def members
    @members = Member.where(user_id: current_user.id)
  end
end
