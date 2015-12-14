class Admin::BaseController < ApplicationController
  before_filter :set_current_user
  before_filter :limit_access

  layout "admin"

  def index
  end

	private

	def limit_access
		if @current_user.blank?
			redirect_to admin_log_in_path
		end
	end

	def set_current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

end
