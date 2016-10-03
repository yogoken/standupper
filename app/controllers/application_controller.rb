class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login

  private
  def login
    if session['user'].blank? || User.find_by(uuid: session['user']['uuid']).nil?
      user = User.create(uuid: SecureRandom.uuid)
      session['user'] = user.slice(:id, :uuid)
    end
    @user = session['user']
  end
  end
