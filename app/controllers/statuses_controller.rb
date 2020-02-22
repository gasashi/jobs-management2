class StatusesController < ApplicationController
  def show
    @status = Status.find(params[:id])
    @jobs = Job.where(status_id: params[:id])
  end
end
