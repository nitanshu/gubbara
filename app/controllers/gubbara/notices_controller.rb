require_dependency "gubbara/application_controller"

module Gubbara
  class NoticesController < ApplicationController
    skip_filter *_process_action_callbacks.map(&:filter), :only => [:hide]
    before_action :find_notice, only: [:edit, :update, :destroy]

    def new
      @notice = Gubbara::Notice.new
    end

    def index
      @notices = Gubbara::Notice.all
    end

    def create
      @notice = Gubbara::Notice.create(notice_params)
      redirect_to root_path
    end

    def edit
    end

    def update
      @notice.update(notice_params)
      redirect_to root_path
    end

    def destroy
      @notice.destroy
      redirect_to root_path
    end

    def hide
      session[:hidden_notices] ||= []
      session[:hidden_notices].push(params[:id])
    end

    private

    def find_notice
      @notice =  Gubbara::Notice.where(id: params[:id]).take
    end

    def notice_params
      params.require(:notice).permit(:message, :active, :background_color, :font_color, :font_size, :text_align, :cross_button_color, :z_index)
    end
  end
end
