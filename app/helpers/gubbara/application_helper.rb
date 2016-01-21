module Gubbara
  module ApplicationHelper

    def list_notice
      session[:hidden_notices] ? @notices = Gubbara::Notice.where("gubbara_notices.id not in (?)", session[:hidden_notices]) : @notices = Gubbara::Notice.all
      render(:partial => 'gubbara/application/fetch_notices', locale: {notices: @notices})
    end
#-----------------Handles main_app.root_path problems now you don't need to define application path as main_app.path----------------#
    def method_missing method, *args, &block
      puts "LOOKING FOR ROUTES #{method}"
      if method.to_s.end_with?('_path') or method.to_s.end_with?('_url')
        if main_app.respond_to?(method)
          main_app.send(method, *args, &block)
        else
          super
        end
      else
        super
      end
    end

    def respond_to?(method)
      if method.to_s.end_with?('_path') or method.to_s.end_with?('_url')
        if main_app.respond_to?(method)
          true
        else
          super
        end
      else
        super
      end
    end
#------------------------------------------------------------------------------------------------------------------------------------#
  end
end
