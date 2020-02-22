class ApplicationController < ActionController::Base
  before_action :get_status

  def get_status
    @statuses = Status.all
  end
end
