class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
  end

  def create
    Job.create(orderee:params["jobs"]["orderee"],serial_number:params["jobs"]["serial_number"],deadline:params["jobs"]["deadline"],comment:params["jobs"]["comment"],status_id:params["jobs"]["status_id"])
    redirect_to root_path
  end

  def destroy
    job = Job.find(params[:id])
    job.destroy
    redirect_to root_path
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    job = Job.find(params[:id])
    job.orderee = params["jobs"]["orderee"]
    job.serial_number = params["jobs"]["serial_number"]
    job.deadline = params["jobs"]["deadline"]
    job.comment = params["jobs"]["comment"]
    job.status_id = params["jobs"]["status_id"]
    job.save
    redirect_to root_path(job.id)
  end
end