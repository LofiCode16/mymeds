class ApplicationController < ActionController::Base
before_action :members
before_action :medics
  def members
    @members = Member.where(user_id: current_user.id)
  end

  def medics
    @medics = Medic.where(user_id: current_user.id)
  end
end
