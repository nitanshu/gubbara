module Gubbara
  module ApplicationHelper
    def user_announcement
      session[:hidden_notices] ? @notices = Gubbara::Notice.where("gubbara_notices.id not in (?) and gubbara_notices.active not in (?) and gubbara_notices.base not in (?)", session[:hidden_notices], false, 'cookie') : @notices = Gubbara::Notice.where("gubbara_notices.active not in (?) and gubbara_notices.base not in (?)", false, 'cookie')
      render(:partial => 'gubbara/application/fetch_notices', locale: {notices: @notices})
    end

    def public_announcement
      cookies[:hidden_public_notices] ? @notices = Gubbara::Notice.where("gubbara_notices.id not in (?) and gubbara_notices.active not in (?) and gubbara_notices.base not in (?)", cookies[:hidden_public_notices].split, false, 'session') : @notices = Gubbara::Notice.where("gubbara_notices.active not in (?) and gubbara_notices.base not in (?)", false, 'session')
      render(:partial => 'gubbara/application/fetch_notices', locale: {notices: @notices})
    end
  end
end
