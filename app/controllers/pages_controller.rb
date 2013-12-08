class PagesController < ApplicationController
  before_action :authenticate_user!, :only => [:dashboard, :help]

  def dashboard
  end

  def help
  end
end
