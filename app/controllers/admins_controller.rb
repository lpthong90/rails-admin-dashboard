# frozen_string_literal: true

class AdminsController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin_user!

  def index
  end
end
