class CompletedMedictasksController < ApplicationController
  def update
    @medictask = Medictask.find(params[:medictask_id])

    @medictask.done = !@medictask.done
    @medictask.save

  end


end
