module Gubbara
  class User < ::User
    scope :not_my_notices, ->(user) { Admin::Notice.all.includes(:user_notices).where.not(id: user.user_notices.pluck(:notice_id)) }
    has_many :user_notices, class_name: 'Gubbara::UserNotice'
  end
end
