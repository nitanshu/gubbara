module Gubbara
  class JoinModel < ActiveRecord::Base
    belongs_to :self.included(model_class)
    belongs_to :gubbara_notice, :class_name => 'Gubbara::Notice'
  end
end
