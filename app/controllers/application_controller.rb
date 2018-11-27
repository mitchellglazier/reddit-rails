class ApplicationController < ActionController::Base

# before_action :verify_paid

  def verify_paid
    @paid = true
  end

  # good for user login

end
