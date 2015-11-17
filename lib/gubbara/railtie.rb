require 'action_view/helpers'
module Gubbara
  class Railtie < Rails::Railtie
    initializer "gubbara.view_helpers" do
      ActionView::Base.send :include, Gubbara::ApplicationHelper
    end
  end
end