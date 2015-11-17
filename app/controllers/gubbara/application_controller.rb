module Gubbara
  class ApplicationController < ::ApplicationController
    before_filter :fetch_notices

    def fetch_notices
      session[:hidden_notices] ||= [0]
      @user_notices = Gubbara::Notice.all
      @user_notices = Gubbara::User.not_my_notices(current_user).where("notices.id not in (?)", session[:hidden_notices]) unless current_user.nil?
    end
  end
end
