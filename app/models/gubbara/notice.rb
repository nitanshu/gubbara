module Gubbara
  class Notice < ActiveRecord::Base
    has_many :join_models
  end
end
