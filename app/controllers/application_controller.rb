class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :all_authors, :all_holidays

  private

  def all_authors
    @authors = Author.all
  end

  def all_holidays
    @holidays = Holiday.all
  end
end
