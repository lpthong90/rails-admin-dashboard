# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pagy::Backend

  private
    def page_params
      params[:page]
    end
end
