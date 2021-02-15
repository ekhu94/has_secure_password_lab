class WelcomeController < ApplicationController
    before_action :require_login
    helper_method :logged_in?, :current_user
    def home
    end
end