class ApplicationController < ActionController::API

  def secret
    ENV['secret']
  end

end
