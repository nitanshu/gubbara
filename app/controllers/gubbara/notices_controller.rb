require_dependency "gubbara/application_controller"

module Gubbara
  class NoticesController < ApplicationController
    def new
      @notice = Gubbara::Notice.new
    end

    def create
      @notice = Gubbara::Notice.create(notice_params)
      redirect_to :back
    end

    def notice_params
      params.require(:notice).permit(:message)
    end

    def hide
      @notice_id = params[:id]
      session[:hidden_notices].push(@notice_id)
    end

    def close
      current_user.user_notices.create(notice_id: params[:id])
    end
  end
end
