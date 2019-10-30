class ApplicationController < ActionController::Base
before_action :authenticate_user!
before_action :members
before_action :medics

  def members
    @members = Member.where(user_id: current_user.id) if Member.any? && current_user
  end

  def medics
    @medics = Medic.where(user_id: current_user.id) if Medic.any? && current_user
  end
end
