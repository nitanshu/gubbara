module Gubbara
  module ApplicationHelper
    # include ::ApplicationHelper
    def list_notice
      concat(render(:partial => 'gubbara/application/fetch_notices', locale: {user_notices: @user_notices}))
    end

    def hello
      'putss hesllos'
    end
  end
end
