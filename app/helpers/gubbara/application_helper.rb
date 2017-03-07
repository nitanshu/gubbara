module Gubbara
  module ApplicationHelper
    def list_notice
      session[:hidden_notices] ? @notices = Gubbara::Notice.where("gubbara_notices.id not in (?) and gubbara_notices.active not in (?)", session[:hidden_notices], false) : @notices = Gubbara::Notice.all
      render(:partial => 'gubbara/application/fetch_notices', locale: {notices: @notices})
    end
  end
end
