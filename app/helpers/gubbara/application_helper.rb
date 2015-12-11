module Gubbara
  module ApplicationHelper
    # include ::ApplicationHelper
    def list_notice
      session[:hidden_notices] ? @notices =Gubbara::Notice.where("gubbara_notices.id not in (?)", session[:hidden_notices]) : @notices = Gubbara::Notice.all
      concat(render(:partial => 'gubbara/application/fetch_notices', locale: {notices: @notices}))
    end
  end
end
